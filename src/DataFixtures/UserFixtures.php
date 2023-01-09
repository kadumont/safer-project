<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\String\Slugger\SluggerInterface;
use App\Entity\User;
use Faker;

class UserFixtures extends Fixture
{
    public function __construct(private UserPasswordHasherInterface $passwardEncoder,
    private SluggerInterface $slugger)
    {
        
    }

    public function load(ObjectManager $manager): void
    {
        $admin = new User();
        $admin->setEmail('admin@demofr');
        $admin->setNom('Gambier');
        $admin->setPrenom('Benoit');
        $admin->setCodepostal('75001');
        $admin->setPassword(
            $this->passwardEncoder->hashPassword($admin, 'admin')
        );
        $admin->setRoles(['ROLE_ADMIN']);
        $manager->persist($admin);


        $faker = Faker\Factory::create('fr_FR');

        for ($usr=1; $usr < 5; $usr++) {
            $user = new User();
            $user->setEmail($faker->email);
            $user->setNom($faker->lastName);
            $user->setPrenom($faker->firstName);
            $user->setCodepostal(str_replace(' ', '', $faker->postcode));
            $user->setPassword(
                $this->passwardEncoder->hashPassword($user, 'secret')
            );
            
            $user->setRoles(['ROLE_USER']);
            $manager->persist($user);
        }

        for ($usr=1; $usr < 2; $usr++) {
            $porteur = new User();
            $porteur->setEmail($faker->email);
            $porteur->setNom($faker->lastName);
            $porteur->setPrenom($faker->firstName);
            $porteur->setCodepostal(str_replace(' ', '', $faker->postcode));
            $porteur->setPassword(
                $this->passwardEncoder->hashPassword($porteur, 'porteur')
            );
            $porteur->setRoles(['ROLE_PORTEUR_PROJET ']);
            $manager->persist($porteur);
        }

        $manager->flush();
    }

}

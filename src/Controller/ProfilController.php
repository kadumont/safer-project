<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

//Profile Utilisateur
#[Route('/profil', name: 'app_profil')]
class ProfilController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(): Response
    {
        return $this->render('profil/index.html.twig', [
            'controller_name' => 'Profil de l\'Utilisateur',
        ]);
    }

    //Foction permettant d'afficher les favoris des Utilisateurs
    #[Route('/favoris', name: 'favoris')]
    public function userFavoris(): Response
    {
        return $this->render('profil/index.html.twig', [
            'controller_name' => 'Vos Favoris',
        ]);
    }
}

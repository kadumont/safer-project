<?php

namespace App\Controller;

use App\Entity\Mailer;
use App\Form\MailerType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MailerController extends AbstractController
{
    #[Route('/mailer', name: 'app_mailer')]
    public function index(): Response
    {
        $mailer = new Mailer();
        $form = $this->createForm(MailerType::class, $mailer);
        return $this->render('mailer/index.html.twig', [
            'controller_name' => 'MailerController',
            'form' => $form->createView()
        ]);
    }
}
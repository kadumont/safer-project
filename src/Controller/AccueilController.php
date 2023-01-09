<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\BienRepository;

class AccueilController extends AbstractController
{
    #[Route('/', name: 'app_accueil')]
    public function index(BienRepository $bienRepository): Response
    {
        return $this->render('accueil/index.html.twig', [
            'controller_name' => 'Accueil',
            'biens' => $bienRepository->findAll()
        ]);
    }
}
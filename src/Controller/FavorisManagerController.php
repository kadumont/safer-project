<?php

namespace App\Controller;

use App\Entity\Favoris;
use App\Form\FavorisType;
use App\Repository\FavorisRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/favoris/admin')]
class FavorisManagerController extends AbstractController
{
    #[Route('/', name: 'app_favoris_manager_index', methods: ['GET'])]
    public function index(FavorisRepository $favorisRepository): Response
    {
        return $this->render('favoris_manager/index.html.twig', [
            'favoris' => $favorisRepository->findAll(),
        ]);
    }

    #[Route('/{id}', name: 'app_favoris_manager_show', methods: ['GET'])]
    public function show(Favoris $favori): Response
    {
        return $this->render('favoris_manager/show.html.twig', [
            'favori' => $favori,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_favoris_manager_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Favoris $favori, FavorisRepository $favorisRepository): Response
    {
        $form = $this->createForm(FavorisType::class, $favori);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $favorisRepository->save($favori, true);

            return $this->redirectToRoute('app_favoris_manager_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('favoris_manager/edit.html.twig', [
            'favori' => $favori,
            'form' => $form,
        ]);
    }
}

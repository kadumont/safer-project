<?php

namespace App\Controller;

use App\Entity\Favoris;
use App\Form\FavorisType;
use App\Repository\FavorisRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/favoris/manager')]
class FavorisManagerController extends AbstractController
{
    #[Route('/', name: 'app_favoris_manager_index', methods: ['GET'])]
    public function index(FavorisRepository $favorisRepository): Response
    {
        return $this->render('favoris_manager/index.html.twig', [
            'favoris' => $favorisRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_favoris_manager_new', methods: ['GET', 'POST'])]
    public function new(Request $request, FavorisRepository $favorisRepository): Response
    {
        $favori = new Favoris();
        $form = $this->createForm(FavorisType::class, $favori);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $favorisRepository->save($favori, true);

            return $this->redirectToRoute('app_favoris_manager_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('favoris_manager/new.html.twig', [
            'favori' => $favori,
            'form' => $form,
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

    #[Route('/{id}', name: 'app_favoris_manager_delete', methods: ['POST'])]
    public function delete(Request $request, Favoris $favori, FavorisRepository $favorisRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$favori->getId(), $request->request->get('_token'))) {
            $favorisRepository->remove($favori, true);
        }

        return $this->redirectToRoute('app_favoris_manager_index', [], Response::HTTP_SEE_OTHER);
    }
}

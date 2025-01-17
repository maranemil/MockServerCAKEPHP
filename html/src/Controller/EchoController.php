<?php
declare(strict_types=1);

namespace App\Controller;

use Cake\Http\Response;
use Cake\View\JsonView;


class EchoController extends AppController
{
    /**
     * @return class-string[]
     */
    public function viewClasses(): array
    {
          return [JsonView::class];
    }


    /**
     * @return Response
     */
    public function index(): Response
    {
        // $isPost = $this->request->is('post');
        $this->viewBuilder()->setLayout('ajax');
        $json = json_encode(array('heartbeat'=>"ok"));
        return $this->response->withStringBody($json);
    }

    public function getStatus(): Response
    {
        $this->viewBuilder()->setLayout('ajax');
        $json = file_get_contents(WWW_ROOT.'mock_api/status.json');
        $jsonEncoded = json_encode(json_decode($json));
        return $this->response->withStringBody($jsonEncoded);
    }

}

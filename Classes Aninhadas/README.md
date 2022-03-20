<h1> Classes Aninhadas </h1>

São as classes que definimos dentro de nossa classe. Isso nos permite uma melhor abstração e um melhor encapsulamento.
Tornando a vida do nosso código mais segura e duradoura. É altamente recomendado a substituição de Friendly class por Classes aninhadas.

    type
      TMyCar = class
      private
      
        type
        
          TMotor = class
            private
            public
            end;
      public
        //MyMethods
      end;

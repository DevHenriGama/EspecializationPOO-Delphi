<h1>Class function </h1>
  
  <p> Class function  é uma função que a linguagem nos tras na qual podemos usar métodos das classes sem cria-las desde que o método não use objetos que a classe vai 
    precisa criar ,isso nós facilita muito e
    nos permite ultilizar muito bem progamação funcional junto ao POO.
      "Como Assim ?". Por Exemplo , pense que precisamos inserir algo no banco de dados, precisaremos passar todos os nossos campos 
    para no método que vai fazer a inserção fariamos algo mais ou menos assim : </p>
    
              procedure TMyclass.Insert(F1 : Integer ; F2 : String);
              begin
                //Instrução para a inserir
              end;

  <p> Além de ter um Alto acoplamento , redundancia de código e aquela preocupalção com os memory leaks
   ultilizamos os class function junto a interface para resolver esse problema 
  </p>
  
    IMyInterface = interface
      function Insert : IMyInterface;
      function F1(Field : Integer) : IMyInterface;
      function F2(Field : String) : IMyInterface;
     end;
 
    TMyclass = class(TinterfcedObject, IMyInterface)
     public
      class function New : IMyInterface;
     function Insert : IMyInterface;
     function F1(Field : Integer) : IMyInterface;
     function F2(Field : String) : IMyInterface;  
    end;
  
    ....
      {Implementation}
 
    class function New : IMyinterface ;
    begin
      Result : Self.Create;
    end;
  
     TMyview = class(TForm)
      //Métodos 
      end;
    
    
  <p>Assim podemos fazer o Insert dessa forma: </p>
  
          TMyClass.New.F1(StrToInt(edit1.text)).F2(FNAME).Insert;
          
  Isso torna o Código Mais limpo, Mais coeso , Baixo acoplamento é com facil manutenção.
  
      

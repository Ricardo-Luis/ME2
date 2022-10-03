# *Notebooks* reativos

## _Notebooks_ Pluto

.... *WORK IN PROGRESS* ...

**TODO list:**

- sobre notebooks... complemento aos elementos de estudo (não substitui livro, apontamentos da aula, etc...)
- Sobre notebooks em geral?! Ex: [Data Science Notebooks](https://datasciencenotebook.org/)
    - *literate programming*; ciência reproduzível
- como abrir os notebooks:
    - executar um notebook na cloud (Binder) raramente funciona! » Instalar Julia e Pluto (dentro do Julia)
    - fazer download (notebook.jl) ou **copiar URL colocado no topo do notebook: "GitHub URL | notebook" e colar no Pluto na barra de "Open a notebook"**
- Ferramentas utilizadas nos notebooks Pluto:
    - Markdown (texto): qualquer célula pode ser interpretada como texto, premindo no teclado "Ctrl" + "m"
    - LaTeX (equações)... não é necessário saber Latex, Ex: [Online Equation Editor](https://www.codecogs.com/eqnedit.php)
    - [draw.io](https://app.diagrams.net/) (desenhos, esquemas, diagramas), disponíveis para reutilização
    - Julia (cálculo, gráficos); não requer especial conhecimento de programação; sintaxe muito idêntica ao MATLAB/Octave
    - Julia, aceita símbolos Unicode nas expressões de cálculo (grande vantagem, pois torna as expressões de cálculo muito semelhantes às equações escritas de forma matemática), [Unicode Input](https://docs.julialang.org/en/v1/manual/unicode-input/)
    - PlutoUI (interactividade com o utilizador), [How to Create Engaging Interactive Reactive Notebooks using PlutoUI, Pluto and Julia](https://youtu.be/nkyvN7PXQZc), YT vídeo (cerca de 25min.)
- Notebook reactivo: nas parcelas de código, o Pluto reconhece as dependências entre as células. Sempre que uma é alterada, todas as células que desta dependem são automaticamente atualizadas (como no Excel).
- ...


\
## A linguagem de programação Julia 
[Julia](https://en.wikipedia.org/wiki/Julia_(programming_language)) é uma linguagem de programação de [alto nível](https://en.wikipedia.org/wiki/High-level_programming_language), [dinâmica](https://en.wikipedia.org/wiki/Dynamic_programming_language) e de elevado desempenho adequada para [computação científica](https://pt.wikipedia.org/wiki/Computa%C3%A7%C3%A3o_cient%C3%ADfica). Apresenta ótimas características para a construção de modelos matemáticos e de técnicas de simulação numérica, permitindo analisar e resolver problemas científicos e de engenharia, através do computador.

Julia foi lançada em 2012 mantendo-se como uma linguagem de programação gratuita, multi-plataforma e *open source*.


A escolha do Pluto.jl como ambiente de programação reativo para Julia, para a elaboração de *notebooks* de apoio a Máquinas Elétricas II, possibilita a implementação de boas práticas de [Ciência Aberta](https://www.ciencia-aberta.pt/). O Julia com o Pluto.jl permitem disponibilizar [recursos educacionais abertos](https://en.wikipedia.org/wiki/Open_educational_resources), através da realização de materiais de ensino-aprendizagem. Também no âmbito da investigação e desenvolvimento, estas ferramentas permitem aplicar os princípios [FAIR](https://openscience.eu/):

- **F**indable
- **A**ccessible
- **I**nteroperable
- **R**eusable


Assim, os *notebooks* reactivos com Julia/Pluto podem fomentar a transparência, reprodutibilidade, reutilização e inovação em ciência/engenharia.


## "Time to first plot"
Julia é uma linguagem compilada *just-in-time* (JIT). Isso significa que o compilador irá gerar código binário conforme necessário. Assim, quando abrir/executar o *notebook* pela primeira vez, verificará que tem de aguardar algum tempo pela compilação do código Julia, dependendo da complexidade do mesmo e da capacidade de processamento do seu computador. Por exemplo, a biblioteca `Plots.jl` para realização de gráficos tem uma dimensão considerável e exige tempo de compilação. Esta latência na compilação de um programa Julia é conhecida por ["time to first plot"_](https://lwn.net/Articles/856819/), que teve melhorias significativas na versão 1.6 do Julia. Após a 1ª execução, apenas as alterações que realize (no código, nos dados, por interação) serão compiladas, pelo que verificará, a partir daí o [elevado desempenho](https://julialang.org/benchmarks/) da linguagem Julia.

Assim, como sugestão, após abrir um dos *notebooks* de Máquinas Elétricas II no seu Julia/Pluto, pode fazer uma primeira leitura desse *notebook* na versão estática do mesmo, disponibilizada neste *website*, até a 1ª compilação/execução terminar, para então depois poder utilizá-lo.

No final de cada *notebook* é indicado o tempo da 1ª compilação, acompanhado das informações sobre a frequência de processamento do CPU e a capacidade de memória RAM do computador em que foi testado, como referência.


## Leitura/informação complementar:

### Sobre _notebooks_ Pluto:

- Fons van der Plas, Mikołaj Bochenski, [Interactive notebooks Pluto.jl](https://youtu.be/IAF8DjrQSSk), vídeo de apresentação do Pluto, conferência JuliaCon 2020, Duração: 24min.
- Fons van der Plas, [🎈 Pluto.jl — one year later](https://youtu.be/HiI4jgDyDhY), vídeo da conferência JuliaCon 2021. Duração: 27min.
- Connor Burns, [A Guide to Building Reactive Notebooks for Scientific Computing With Julia and Pluto.jl](https://medium.com/swlh/a-guide-to-building-reactive-notebooks-for-scientific-computing-with-julia-and-pluto-jl-1a2c0c455d51), artigo de opinião, Medium, Dec. 2020.


### Sobre programação Julia:

- Jeff Bezanson, Stefan Karpinski, Viral B. Shah, Alan Edelman, [Why We Created Julia](https://julialang.org/blog/2012/02/why-we-created-julia/), Massachusetts Institute of Technology, Feb. 2012.
- Gabriel Gauci Maistre, [10 Reasons Why You Should Learn Julia](https://blog.goodaudience.com/10-reasons-why-you-should-learn-julia-d786ac29c6ca), artigo de opinião, Good Audience, Sep. 2018.
- Abel Soares Siqueira, Gustavo Sarturi, João Okimoto, Kally Chung, [Introdução à programação em Julia](https://juliaintro.github.io/JuliaIntroBR.jl/), tradução do livro de: Allen Downey, Ben Lauwens, [Think Julia: How to Think Like a Computer Scientist](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html), O’Reilly Media, 2018. 

### A Pluto.jl notebook ###
# v0.19.11

#> [frontmatter]
#> URL = "https://github.com/Ricardo-Luis/me2/blob/main/notebooks/DC/me2-p-maq-dc-back2back.jl"
#> title = "Ensaio back-to-back"
#> tags = ["DC machines"]
#> "to cite the work, use" = "Ricardo Luís. (2022). Documentos computacionais sobre Máquinas Elétricas II [ coleção de documentos dinâmicos (notebooks) de apoio à unidade curricular de Máquinas Elétricas II, lecionada no curso LEE do ISEL]. Disponível: https://ricardo-luis.github.io/me2"
#> description = "Análise de potências, perdas e rendimento de máquinas DC"
#> date = "2022-09-06"

using Markdown
using InteractiveUtils

# ╔═╡ e89303b7-3dbb-452c-bd71-ddaac5d22dc4
begin
	using PlutoUI, PlutoTeachingTools # interface, ferramentas de edição
	using Plots, EasyFit 				# gráficos, linhas de tendência
	using TypedTables, Statistics 	# tabelas, estatística
	using BasicInterpolators 			# interpolação de dados
end

# ╔═╡ 0c910bbe-9eb7-46cc-81c1-f9ccd460976b
ChooseDisplayMode();

# ╔═╡ c064e55c-6924-49b7-abbc-385a081c57b2
md"""
---
$\text{RELATÓRIO}$ 
$\textbf{Ensaio \emph{back-to-back} :}$
$\textbf{Análise de potências, perdas e rendimento de máquinas DC}$
---
"""

# ╔═╡ 12222dcc-7102-445a-801e-85b11b2b96c3


# ╔═╡ 01d6ccf1-a046-4386-95b9-7a8437e6bc48
md"""
# 1 - Introdução
"""

# ╔═╡ 2653c6fc-3c84-4e08-a53b-d0d2d804f140
TwoColumn(md"[![](https://img.shields.io/badge/GitHub_URL-notebook-C09107)](https://github.com/Ricardo-Luis/me2/blob/main/notebooks/DC/me2-tp-maq-dc-ex2.jl)", ChooseDisplayMode())

# ╔═╡ 339644c3-e4be-4181-a914-a1317e74f06c
TwoColumn(md"**Copy/paste this URL:**", md"**Display mode:**")

# ╔═╡ b3901cdf-5f76-4649-9de5-865a1e67e9d3
md"""
---
"""

# ╔═╡ aa438d59-98d7-41b6-b34d-aa55220cf04f
md"""
## 1.1 - Objetivos
"""

# ╔═╡ 57972b14-d0eb-49f2-a8fe-fbfa25eb2f43
md"""
- Compreender o ensaio *back-to-back*;
- Ligar eletricamente máquinas DC em paralelo;
- Estabelecer o balanço de potências de uma máquina de corrente contínua;
- Determinar curvas de rendimento das máquinas DC.
"""

# ╔═╡ dcfb10ac-3a34-477f-ae1e-6a4b42fdc0d2
md"""
## 1.2 - Ensaio *back-to-back*
"""

# ╔═╡ 5d618284-7f40-4d33-94a1-829407bd5f47
md"""
O ensaio *back-to-back* de máquinas elétricas de corrente contínua (DC) consiste em alimentar a partir re uma rede 
"""

# ╔═╡ 39721ee5-b4f8-47ed-ae4f-0865952ebd28


# ╔═╡ 3010fa73-fdb8-4ad9-94dc-45db49ae7fcf
md"""
# 2 - Procedimento de ensaio
"""

# ╔═╡ f60d6cdd-7ff4-4a00-b2aa-a1440234ec6d
md"""
## 2.1 - Esquema de ligações
"""

# ╔═╡ e08c8f92-da7a-4ac8-bc4b-2c19aa014403
html"""
<iframe frameborder="0" style="width:110%;height:450px;" src="https://viewer.diagrams.net/?tags=%7B%7D&highlight=FFFFFF&edit=_blank&layers=1&nav=1&title=back2back_lab.drawio#R7V1Zc5vIFv41qpr7YBXd0CyPXuJ4ppKaTOzr5M5LCktI4gYJDaDYzq%2BfBtFAL6BmlyJrqiamQQ065ztr9zlM1Ov1y%2FvA3q4%2B%2BnPHm0Bl%2FjJRbyYQAlVR8T%2FxyOt%2BxNLRfmAZuPP0onzg3v3ppINKOrpz505IXRj5vhe5W3pw5m82ziyixuwg8J%2Fpyxa%2BR991ay8dbuB%2BZnv86Bd3Hq32oyY08vE7x12uyJ2Bbu3PrG1ycTpFuLLn%2FvN%2BKPlx6ruJeh34frT%2Fa%2F1y7Xgx8Qhd9hS4LTmbPVjgbCKZL%2FzxXnu8vbc%2F6dsvr%2BBh5Xo3X%2BcXZkrmH7a3S39x%2BrTRKyFB4O82cyeeBUzUq%2BeVGzn3W3sWn33GTMdjq2jtpafDKPC%2FZ6RS8cjcDTBjXH%2BDj0N%2FF49fLQN77uLnvvY9P0juoi6SDz63cD2vMH51Gf9X%2BM5NYb6NHyTz2cEshQ5SsocoTGIlH3yGJ1pKxx9OEDkvhaGUiO8df%2B1EwSu%2BhJzVLDRNQZyCWlVTMj7nEEm5oawK6IBK%2Bj07ReUymz1nHP4j5Z2Yj%2B%2Be7x4eP3wOHh%2B%2BBQtltv64eNhdENRV8dHZzC9jiUjotnFi1tjhKmNsJRMxuYLXr%2FhAmWpWNvC%2FZACpgAzcxDRSsqPX4tEnJ3Dxj3WCdLCUFZEdLJ2oArSp7DlzSnR5hhW4gQTcIGOB49mR%2B4MWeBGH0jt88l38xBkeVN2kwIDRMDWYWTDug5mTfrEoo8xcmnl4rj15uLkS2GQ%2FXgpJQuICAXAwoe%2FTw1jg%2FKW%2Fsb13%2BehVriJizubXfPD9bYqp%2FztR9JoKqb2LfBpxzosbfS38vUeWrqH0OAdWfPBaOGBhFWL6RATnPpYHMnbrejm%2B8XH6LGAPUFY08Ej6hfR88XJePkrBvOd8heQCSTC3RKmuKRSyNGj2Bauqn1mln7bxvZ3g3Q9MwzDlVKyWXWyNP9hPjvfJD91U8T%2F5UeSvY1YQq6oU9Vl8YHvuMr505mwSdBThRqa9TK%2BJYpjGc23jZ1m%2FLGNnZup42NAE8XVTdzPfzSI%2FCLO%2FvqF6QJA3MJquUaxCJm9dgCZQaMQKdW9dxlQJ2MAUlAKorRAKsp2qg1y2y4wdJe3NZRsOI9uqQcs20hkglMg2Jov9WrgsEcCw4j6q%2BD45tPYzdqo44GkrjsAJ3TBRHFs%2FwhO6foLNb2LkBX5kpw96AcxK8MnrE2gybDME%2BkQR6BOtL32CDvOUVh%2B1gw4uArhNPt0QVNXRQYKK3H9WLDujZz3nP9WClfSjyZ97%2F7Tnn%2FpndT1%2FykVL%2Fa2ii6ZwOlpWIxdDh1be1kChwyHFLR03IEBNpCv9WABNqbQAh6%2B3rP4thqb3LQ7EM6GClQOhChEhQIsQbCRBzaTjsL9iSIqRrGMzjBhBi0Y%2FF9vIihE06ImQLhck1RUjWBKMlT4Xcz0R737FqFFKqZZVqQyxCzbiyfNn3wVGgorjUYWUNRIyKSvz%2BeOHn%2F7df5%2F%2FhJvHq3u02X54sEm8dCzioRkUelTY0MqojJypplxqqnacoUPhA%2FcKdyQKNHQvijPSfvJ0Oe71f3Y%2BOXERJvi7xBdAbfuSn8QDC3tGf%2BHRCeb2xi5epC%2FjfyNyL%2Fzs%2B9vtxzmJwy5qJBIz4uqmYlhMoqdDXFjDxjJrdz5PQneRt02LLpU4LpWTGiGKzvoVaQqkICGijAeL5O4iFG1MNITnjQaVmB6CBjg2GkQB62BouD5vNGgakw4dXTcYY6Lh5rzRgEwWDWhcNBgSCcqabnIpmY7FoWSierOhPwkOTdTzmpShnj3rAJvjbcw7bqa%2BmSeRRK6Z5anMqjRK%2BgiWo0oRUszOCFfmjyzpAplg0GiIJC4Zwi5j9g0kUbpwb2Ln7o8m1pwY5HY%2BwX6Wz87cKbX42XDyoPToETz7Tea5PgWCh5b5LWfh00CxFSzIsSWQY1beuvNozFKBaIeH3ybwCkD0%2BJ%2FzdmGBSqe3SJJ5NA9WlOjthN8Xb9zG3FZpP0mwV7QvdguT093HKzQBZTbg5b6VPlH57XjH7kVzm%2BlYl0XW99GVZr5P3Yw6UoDwPv3u3BHlSRikNdjmUdjUoSQfISaZXeTZlR1ItGrQ2z80xeIkOpPyQfbTQJHFZmXa89xtWKYDC1S2w%2B2%2BkGLhvsScaUP2TnfdmCq77Z4E8EXCA40nfDbYPeXb204NiWznx9Oymh3wV4PK9LBgDeoZEUetSq6WmBBb%2BZ%2BfVSrZT2QGpZosQGPJovFkIauXFOp7I4tE0VCbYhOempXcORKngHbqWeLLegSoepqecyGqxDb91hnRo2ZmbX4NyyDUfWxeY%2B3p%2FeVpWaXOF6Yhs5PGHNlAoe5D9xpwuCvP5p0FHBBxK0eAg7h2T%2BG19YCFOpN2KyMy28IFO%2F6qq3u6qdxrtcuvdX0pmGrQRAZI%2F0%2BDrr8106offarlOGs3nOFfaW8cfxdOF7vQ%2BQaFsBBVrXdhQRDty%2BPQlFMZQOVVBtnT3rnKkIhwjpmfeXkV%2BSvhp4h7gmSF524fuzMHELLF24KyIAFvAajQCa2Ya72Zg17MQauuBC3NAYLKtGgNmNWF%2FnZhiD0OMCbEwNAQAzTEeuwVMCbEDi5vdLUqwW4hYTvYHHiurusCqmh%2BqgaylcNTKEfuKMnLhkyj%2Bz%2FkeX6Fxjlj585SHluAtknY6Z0aQMk%2FzGKM9JZDRUdTxTK4yXXDzOYeuFkOOh7z17pZzgkYQDBQzM3tbu3LBHI36rpCupKMp2rUhuzGAxRIm6xB2%2FEI2YeORuvU78bTVuMMHdVJ29a2Gkex4BTo%2BYc2c0PHdWjclk%2BjQmxoozYYxAYzahjL1I0OBXbckw0S2WW24ESt4P5P%2F2LtzFb2JhmK4ztxqrNkX9Zc0Ey1E6PJlPADgy%2FTE22RA72tjZGK7jejOYDRhMNoNDbS7G8trPJnvimQzhWIaTJ57dH1B6xXLHqeXaWElFORpDYYJj1lMr3SNAK1uvkoU9WpifpqumaWuG2lz8Vc33W3KLF4jNoU4cxbZIAspzpCjwwxHEbdp3hz5nBg9wgN2SRDbALq7SvupVi%2FvtstWeLQnTs8jAE0DIstpNGZ5TVpEzhQRoF19A8lFNjnGiSfoDZaShy2srJpg8RS8B98WceReX%2BCJBgzh%2FRyJEAaM1NWwDRQAKr200h79ApLS2UqnoS7BHqqsBRTWqan8KlXWFoaX2HJOw79VViKKd8%2BsBBXWL4%2FLSexC%2F6aXIWlQLCGdQwlKpf7rrC0DK7CEvFk6avCUkyWnl%2FnxVOzkjtHYrshxaSjr7AUkpRIV68VlkfNzOOpsBQzSBSqvlVYDpS6ME2mwtIa2UBpcEw4nHuFJVAM7bjwMG7z38%2FkXuHuiYzZQVAASeHEmUPHYHYhC17SNCxyZJr05JY%2FeecF%2Fu6myvwDLhHKhZLxJwkQZdfzxvYPiLOHmNW1hu90UWH1PD27E7rI3xtAX%2BAgiEAgH0zAsFjwegUqZ%2B53QOZNXNrIykKvt2By7spCZ94foqOpCazsYzbUHciqNW3fqmQkV7SeKkHnrkp0Zi1eNaYmHFmb1Nu7dO7axDC1qVX40GX9msks8shqE8NkXhtK3ss1lP4QrU8enf7A3Lo%2BaRWy8gP3J35mmzxRBzrFYN%2B8rGQrNaPplHpv2Tx3nYJ5SPsOkFEqVjOlcmBehJgn7VvHjJQeqadjMEuvjTcdwyZMIHZUCmXajLUibs1YCscQmS%2BGVae42QFoTFsLBAbsJy0mtcy7dU59twOmu8mu%2B5pDNpQWk778bTRvDaXrMthEDINFojWsEpNoJ9P3fgegcRtAEeLpMuiGB%2BE7Z8q9yb42PBiyHZbeNjxIc7bRVpZfiZnHs%2BHh5Z8%2F%2Fn79dPfzSv%2Fy%2Fa8%2FF3%2B5D1fbC4ncUJEb8qWJpdqfLUm0Y96HcLp72AWbFAhX8xiu2tTSJskSp%2F9859jxrVRtimMlfP4FxkfqVDNkPIery%2Fi%2FCdXTSoVdGRqD2zhJEtLF3o%2BiekW2YVETjSpk68FXFkuFVS3fHxdu7U02dn07iaNcbgF7fXD5mprmpNyYzle1NbayIfdxClAzKtRY50gbtdTr91t45ogAbEs9OFxmUIgHsqf4lw%2FUoSUIF%2FsK1MWkhhLO1S8YqEOyDWuQQF1MepHf9FaX0IzBXKAuEq1hlZhEtnGEQF1Vebr0FaiL6VLvtdsdBOqV7Bk7tjvNQF1M0noLes0C9aNm5pEH6mDUrce%2F34LTMkydv%2B0HHZufbfLyOWCPxqw1UbPmCofakwk7PtRuSCQmnCWpb9q2J2N3behyCqN2gyBLfJ%2Buuh1UEvFUm5%2Flb47Z%2BhGe0PUTdH4ra8SQZQ2x3HXk95rswq%2BgRAEoQ8aTRFd1HLoXKckFlZ1WsEN0kKKiNCwrmN0RtPvGN0zXuOz9AhOqoUfaDb5uCziZTpPN2sSN7dzJ6mT5txGwfcEta6pqhW2jveh6S6%2FU9Yev77i%2FvBj1orTUYJ5qdN5%2BqglZhAy3cUuMhvaZshZoCM8bDZZi0WiAvaEBHwZ%2BTPtclcRO10d%2F7sRX%2FAs%3D"></iframe>
"""

# ╔═╡ c387e50c-5aac-4901-b1f3-51b690c38a56
md"""
## 2.2 - Material utilizado
"""

# ╔═╡ dfa54345-bcae-4350-aa43-72cd62b83d65
md"""
**Bancada n.º3**

Máquinas DC de excitação composta (utilizadas em excitação derivação): Elektromotoren Werke Kaiser (fabricante) 

- Motor DC n.º 951 (5.5kW; 1500rpm; 220V; 29A):

| **V** | **A** | **kW** | **rpm** |
|:-----:|:-----:|:------:|:-------:|
|  178  |   29  |   4.4  |   1200  |
|  220  |   29  |   5.5  |   1500  |
|  220  |   29  |   5.5  |   2000  |
|       |       |        |         |
|  220  | 0.59 ... 0.35A | (excit.) |

		
- Gerador DC n.º 942 (4.0kW; 250V; 16A; 1500rpm):

| **V** | **A** | **kW** | **rpm** |
|:-----:|:-----:|:------:|:-------:|
|  195  |   16  |   3.1  |   1200  |
|  250  |   16  |   4.0  |   1500  |
|  345  |   16  |   5.5  |   2000  |
|       |       |        |         |
|  250  | 0.3 | (excit.) |


**Reostatos**
- Reóstato de arranque: 7.5Ω
- Reóstato de campo (motor DC): 750Ω
- Reostáto de campo (gerador DC): 1100Ω


**Equipamento de medida**

- 2 amperímetros (circ. de excitação): Chauvin Arnoux C.A 401; Calibre: 1A
- 3 pinças amperimétricas: Chauvin Arnoux F03
- 3 voltímetros: Chauvin Arnoux C.A 402; Calibre: 300V
- taquímetro: Chauvin Arnoux C.A 25
- ponte de Wheatstone: Cropico Test


"""

# ╔═╡ eb5f4190-17a0-4bac-b2a2-1d35622f3d2c
md"""
## 2.3 - Condução do trabalho
"""

# ╔═╡ fce78f7b-dcdc-4ae3-918d-622db2f27269
md"""
**Tempo de realização da montagem e execução do ensaio:** cerca de 75 minutos. 
\
1. Realizar a montagem elétrica de acordo com o [esquema de ligações](## 2.1 - Esquema de ligações), com:

  - reóstato de arranque no valor máximo ⟹ corrente de arranque baixa;
  - reóstato de campo do motor no valor mínimo ⟹ velocidade baixa;
  - reóstato de campo do gerador no valor máximo ⟹ tensão baixa;
  - interruptores da montagem elétrica desligados inicialmente.
\
2. Ligar rede DC do Lab. de Máq. Elétricas e na bancada de ensaio $(U_{rede}=220\rm{V})$. Ligar o interruptor, $\rm IF1$, fazendo arrancar o motor DC;
\
3. Diminuir suavemente o reóstato de arranque até ao valor mínimo, $(0\ohm)$;
\
4. Ajustar a velocidade do grupo motor-gerador DC através do reostato de campo do motor para a velocidade nominal, $(n=1500\rm{rpm})$;
\
5. Ajustar a tensão do gerador DC, $(U_{ger}=220\rm{V})$, através do seu reóstato de campo. Confirmar a correta polaridade dos terminais gerador DC, relativamente aos terminais da rede DC. Fechar o interruptor, $\rm IF2$. Poderá verificar-se uma corrente de linha do gerador DC residual, devido a diferença de aferição entre o voltímetro do gerador *vs.* voltímetro na entrada da rede DC da bancada;
\
6. Dá-se início ao registo de valores do ensaio *back-to-back*:

   - Para regular a carga das máquinas, de modo a criar vários pontos de funcionamento do grupo motor-gerador com potências em jogo sucessivamente crescentes, diminui-se progressivamente o reóstato de campo do gerador DC e reajusta-se a velocidade para o valor nominal, através do reóstato de campo do motor DC;

   - Registam-se sucessivamente os valores das correntes de linha e de exitação de cada máquina DC, a corrente na entrada da rede DC e a velocidade, para os diferentes pontos de funcionamento do grupo motor-gerador. A tensão será constante. 
\
7. Repetir ponto 5 (exceto a condição de polaridade). Desligar os interruptores por ordem inversa. Fim de ensaio.\

"""

# ╔═╡ 6fef9e1c-e321-4ef8-9140-dc4dbfe49936


# ╔═╡ 349d542f-024d-4982-867c-afa9e105db27
md"""
# 3 - Resultados experimentais
"""

# ╔═╡ f1b48849-a61f-4825-bcc8-ff12d3c09987
md"""
## 3.1 - Leituras realizadas
"""

# ╔═╡ e05493c5-1231-4fda-821c-65420c221551
md"""
Tensão da rede de corrente contínua:
"""

# ╔═╡ 5bb9b54a-56f3-431c-b47c-75a58bff7d22
U=220;

# ╔═╡ 494278aa-f24d-4168-8615-f7803495fafd
md"""
Medição dos enrolamentos induzidos das máquinas DC:
"""

# ╔═╡ 080ba59a-6a4a-424e-8741-9b59332c2f86
begin
	Rᵢᴹ=1.22 	# Resistência do induzido do motor, Ω
	Rᵢᴳ=2.02 	# Resistência do induzido do gerador, Ω
end;

# ╔═╡ 60cc12ac-6fe6-439b-a149-39ffa704ba8b
md"""
Dados registados ao longo do ensaio *back-to-back*:
"""

# ╔═╡ a41a8eeb-c2bf-4025-8a91-a5654ba69ca7
# dados do ensaio:
begin
	A₁=["Irede (A)" 2.95 3.15 3.63 4.71 5.40 6.91 7.82 8.64 8.75 10.70]
	A₂=["Imot (A)" 3.86 6.00 9.13 14.10 16.10 20.83 23.34 24.79 25.33 29.30]
	A₃=["Iₑₓmot (A)" 0.660 0.660 0.630 0.580 0.580 0.580 0.580 0.605 0.570 0.600]
	A₄=["Iger (A)" 1.69 3.57 6.02 9.91 11.43 14.42 16.18 16.95 17.16 19.38]
	A₅=["Iₑₓger (A)" 0.280 0.275 0.280 0.285 0.295 0.320 0.330 0.370 0.360 0.390]
	taq=["n (rpm)" 1497 1491 1490 1518 1512 1510 1510 1490 1522 1491]
	A₁, A₂, A₃, A₄, A₅, taq 
end;

# ╔═╡ fd40f95e-9754-47d7-83a5-3e166947ecb7
dados_ensaio=Table(A₁=A₁, A₂=A₂, A₃=A₃, A₄=A₄, A₅=A₅, velocidade=taq)

# ╔═╡ df5bc5cc-9d9d-41d7-9956-a5f9af31c4cf
md"""
## 3.2 - Tratamento de dados
"""

# ╔═╡ 13d6e0d9-2cb9-4125-a406-c4caa0d63719
md"""
Nesta secção definem-se e preparam-se as grandezas a utilizar para a análise de resultados, obtidas das leituras realizadas.
"""

# ╔═╡ 3b9e9b0e-2805-4d48-8033-2eda3ee606e0
md"""
-  $I$, corrente da rede DC (A):
"""

# ╔═╡ eb03dfe8-a2ae-4e65-a28e-0cec0cfbe65b
begin
	I=vec(A₁)       # transformar um array num vetor coluna
	popfirst!(I)    # eliminar 1º elemento do vetor
	I               # vetor apenas com dados numéricos
end

# ╔═╡ 82103e6d-a4ab-44fa-a812-da593b506c89
md"""
-  $$I_l^M, I_l^G$$: correntes de linha do motor e gerador, respectivamente, (A):
"""

# ╔═╡ 887a06bc-bcdf-4a63-b838-e2ef3f60c7cf
begin
	Iₗᴹ=vec(A₂)       # transformar um array num vetor coluna
	Iₗᴳ=vec(A₄)       # transformar um array num vetor coluna
	popfirst!(Iₗᴹ)    # eliminar 1º elemento do vetor
	popfirst!(Iₗᴳ)    # eliminar 1º elemento do vetor
	Iₗᴹ, Iₗᴳ          # vetores apenas com dados numéricos
end

# ╔═╡ 398ed3f9-e634-4281-8bc6-5b4fb504e97e
md"""
-  $$I_{ex}^M, I_{ex}^G$$: correntes de campo (em derivação) do motor e gerador, respectivamente, (A):
"""

# ╔═╡ 983f6e18-4913-4f32-a741-2d72f9ddd792
begin
	Iₑₓᴹ=vec(A₃)       # transformar um array num vetor coluna
	Iₑₓᴳ=vec(A₅)       # transformar um array num vetor coluna
	popfirst!(Iₑₓᴹ)    # eliminar 1º elemento do vetor
	popfirst!(Iₑₓᴳ)    # eliminar 1º elemento do vetor
	Iₑₓᴹ, Iₑₓᴳ         # vetores apenas com dados numéricos
end

# ╔═╡ 3eb827b9-b335-4423-8597-34c935972313
md"""
-  $n$: velocidade do grupo motor-gerador, (rpm):
"""

# ╔═╡ 48fab47e-b551-4db7-83f1-cb99d348d6a5
begin
	n=vec(taq)      # transformar um array num vetor coluna
	popfirst!(n)    # eliminar 1º elemento do vetor
	n               # vetor apenas com dados numéricos
end

# ╔═╡ f0132080-ad3c-47d1-b0e3-c9c7994c072f
begin
	n_media=median(n)  # cálculo da média aritmética
	n_media=round(Int, n_media)   # arredondamento a número inteiro 

	n_desvio=std(n)    # cálculo do desvio padrão
	n_desvio=round(Int, n_desvio)
	
	n_media, n_desvio   # mostrar resultados estatísticos
end

# ╔═╡ b32d55d7-80b2-45f1-abaf-ef8f6958e980
md"""
Por análise dos dados estatísticos da velocidade constata-se que o ensaio *back-to-back* foi realizado com uma velocidade aproximadamente constante, rondando o valor nominal de $$1500\rm rpm$$:

- **Média aritmética** = $(n_media) rpm

- **Desvio padrão** = $(n_desvio) rpm

"""

# ╔═╡ 71a60d6f-1527-4537-952d-b490af18a935
md"""
Assim, como a tensão das máquinas é contante (ambas ligadas à rede DC de $$220\rm V$$) e a velocidade é aproximadamente constante, perspectiva-se que as perdas rotacionais, $$p_{rot}$$, das máquinas sejam também aproximadamente constantes.
"""

# ╔═╡ 6a7b7432-cb54-445a-aa39-33a13fb958ba


# ╔═╡ 5bcefcd9-f30e-4b40-a1f0-b66ff862d963
begin
	 Kirchhoff=I+Iₗᴳ-Iₗᴹ 				 
	 Kirchhoffₘₐₓ=maximum(Kirchhoff)
	 Kirchhoff, Kirchhoffₘₐₓ
end

# ╔═╡ 81298eb8-b548-42aa-9fea-fa502482578b


# ╔═╡ 1931180b-424d-43ba-af25-61e84faf0eaf
md"""
# 4 - Análise de resultados
"""

# ╔═╡ 7e48b1e0-b66c-4773-9189-b72e931b8520
md"""
## 4.1 - Balanço de potências
"""

# ╔═╡ df08b5c7-d63b-430d-8869-a994ed85b73c


# ╔═╡ 0d8c4c17-1294-47ca-a993-c31099ef4640
html"""
<iframe frameborder="0" style="width:110%;height:600px;" src="https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=FlowPower_b2b.png#R7Vpbb5swFP41aN3DJMBcksflUjZplbp216fIBYdYdXBknCbdr58NhnBtkolQrSIPqfPZHBt%2F3znHnKKB6XrvMbhZ3dAAEc3Ug70GZpppuiNTfEvgOQVsd5wCIcNBChkH4B7%2FQQrUFbrFAYpLAzmlhONNGfRpFCGflzDIGN2Vhy0pKc%2B6gSGqAfc%2BJHX0Jw74SqGGrh86PiEcrtTUI1t1PED%2FMWR0G6n5NBMsk0%2FavYa5rRSIVzCguxRKTIC5BqaMUp621vspInJrs21L57lu6c3XzVDET7nAvfv9dRzhR%2B9HDH4tkfVlfn%2F3ASj2niDZouw%2BktXy52yHxMI3srkkaP9R7rgGJigKVHPmExjH2Bfgiq%2BJAAzRjDmjj%2FmGAoEsMSFTSihLjGZbBSb121B3hoISceqmPETXiLNnMWB3oCvjZFUgKsMYIpDjpzLdUKkmzM3lM9xSLFZi6krg40yoSt9OZjczEdMt85G6qrj%2FFUO2c8QQhyxEvGZINAq3fYASes%2Bh2hio7onqqiHX6pdqczxQfR7VwOmIasc2TqJa7DN8LgzbyAFx%2B4JFPmpecdvCahdkKztoLV1Dt8pzBuWdqzy7G%2BWZbsXQpYPMkE%2BOUF3N%2BJ0FmZqhC1NtuAPVPVFdNWT1fEoc4vcRpg27I6aB%2BcpOPcTvI1QfZehfnbp3qoen%2FGPx264elnv26nOfB6rzZAu%2B6OnesBp0JDBrs9DcCdfcmQC%2Ff06xmsI42vMm%2FWR6iWiEKhJSECQ4jKQIhXqQwCdPiHHsQ%2FJRdaxxEMhpJrsV5uh%2BA305547BjcCSGh2S96VL8zTiqgppyt95Wc54SaZyQrR%2FUahZr1URgA7S3wUhG26DkqtCKYq2FBDOZs1uYe12sdXsuZdwtiBJ839iLsAM%2BRxTaQbBOFkhZfiPGAaJuqYDQs1KaLBMu0boqIHPvMLdPaFNh7SUUOGG8EH6oT2%2FOfB686Z47chRQc1R9dd21NFL4RWJ7cyJvVtg2bpS%2FH74nIzYqwHvxZe4dPK9DGumQ%2BRuPjDRCnmyjYMuqrqwQMXfrbou8uzbjy6ayrmSuMy7wSyP35P%2FK%2Fuewqm8pnCm1MXn%2BvpCMcB57Rhgth2xbheB4nou%2Fgq3fie8utX%2FweybGm9PxcpCKPvXyJcD3po%2BOtCB7R4%2FtOX5oR8dNJXcklwgWZVsXkk6zck1ej%2BQ2kjqqPLUnf2DvOTcRp%2BkZpnlSIL38gTvXRUCe9HFveYU7w0p%2FqQUX6mn2w1HP9BUbbicMkCDMoYKzTmvT%2FxrMc7uuRgHWoso0oGHyH5KZK88krvg1SN7e40lUBF9%2FkIsz45r3nBcO4V%2Fp%2FpqQ8Ox3ez12A7aSzJbdWz%2FJls1dsGsVLR5exU4RjlUQ4xRRyW51pdhigJwGvg3x%2BcLQPw8vKSZJoHDi7Bg%2Fhc%3D"></iframe>
"""

# ╔═╡ 07eeed4a-6a40-4585-b04f-26da0157fe2e
Foldable("Listagem das grandezas utilizadas neste relatório (👈 clicar em ▶ / ▼ para expandir/comprimir):",md"
-  $$U, I$$: tensão, corrente da rede DC\
-  $$p_t$$: perdas totais do sistema *back-to-back*\
-  $$R_i^M, R_i^G$$: resistências rotórica do motor e gerador, velocidade do grupo motor-gerador\
-  $$I_l^M, I_l^G$$: correntes de linha do motor e gerador\
-  $$P_{ab}^M, P_{ab}^G$$: potências absorvidas do motor e gerador\
-  $$I_{ex}^M, I_{ex}^G$$: correntes de campo do motor e gerador\
-  $$p_J^M, p_J^G$$:  perdas de Joule do motor e gerador\
-  $$p_{ex}^M, p_{ex}^G$$:  perdas de excitação (em derivação) do motor e gerador\
-  $$p_{ele}^M, p_{ele}^G$$:  perdas elétricas do motor e gerador\
-  $$p_{C}^M, p_{C}^G$$:  perdas constantes do motor e gerador\
-  $$P_d^M, P_d^G$$: potências desenvolvidas do motor e gerador\
-  $$T_d^M, T_d^G$$: binários desenvolvidos do motor e gerador\
-  $$p^M_{(mec+Fe)}=p^G_{(mec+Fe)}=p_{(mec+Fe)}$$: as perdas mecânicas e magnéticas, ou perdas rotacionais, $$p_{rot}$$, das máquinas consideram-se iguais, dado que as máquinas têm dimensões/características semelhantes\
-  $$T_d^M=T_d^G=T_d$$: também se conclui que os binários desenvolvidos são iguais, $$T_d=T_u+\frac{p_{rot}}{ω_m}$$ \
-  $$T_u, ω_m$$ ou $$n$$: binário mecânico, velocidade angular mecânica do grupo motor-gerador em $$\rm rads^{-1}\:$$ ou $$\:\rm rpm$$, respetivamente\
-  $$P_{u}^M, P_{u}^G$$: potências úteis do motor e gerador\
-  $$E^{'},E$$: força contra-eletromotriz do motor, força eletromotriz do gerador\
")

# ╔═╡ 66ada8ac-6556-4d18-9cf3-cbdbf3f9bc69
md"""
## 4.2 - Cálculo de potências e perdas
"""

# ╔═╡ 01e08f32-9f91-41f9-b022-ad877864a784
md"""
**Perdas das máquinas DC:**
"""

# ╔═╡ d12d08d6-4c4c-4afc-b4e5-970f86a440e5
md"""
- Cálculo das perdas totais do grupo motor-gerador:
"""

# ╔═╡ 2b7754b3-44b3-4a09-99e2-4827afbacc64
pₜ = U*I

# ╔═╡ 9c117644-13d3-4de3-a30b-e626df7d6815
md"""
- Cálculo das perdas por efeito de Joule no circuito **induzido** de cada máquina:
"""

# ╔═╡ fc62b652-0d92-49e4-ae27-fd04a6b1d8bd
begin
	pⱼᴹ = Rᵢᴹ*Iₗᴹ.^2
	pⱼᴳ = Rᵢᴳ*Iₗᴳ.^2
	pⱼᴹ, pⱼᴳ
end

# ╔═╡ dff17723-bba8-491f-af37-9119e4ff4445
md"""
- Cálculo das perdas por efeito de Joule no circuito **indutor** de cada máquina:
"""

# ╔═╡ 1c048c68-2a41-4710-9d5d-e092abbfc7d9
begin
	pₑₓᴹ = U*Iₑₓᴹ
	pₑₓᴳ = U*Iₑₓᴳ
	pₑₓᴹ, pₑₓᴳ
end

# ╔═╡ 55483f43-ca65-4775-a4b7-b824295ad34d
md"""
- Cálculo das perdas rotacionais (consideradas igualmente repartidas pelas máquinas DC):
"""

# ╔═╡ 4cda0d79-6a76-4529-b70e-4eb0bf9c2451
pᵣₒₜ = 0.5*(pₜ-pₑₓᴹ-pⱼᴹ-pₑₓᴳ-pⱼᴳ)

# ╔═╡ 0865009d-6d80-452b-b9e5-74b424f9b3c3
begin
	pᵣₒₜᵃᵛᵍ = median(pᵣₒₜ)				# média aritmética
	pᵣₒₜᵈᵉᵛ = std(n)					# desvio padrão
	pᵣₒₜᵛᵃʳ = pᵣₒₜᵈᵉᵛ * 100 / pᵣₒₜᵃᵛᵍ 	# variação percentual
	(pᵣₒₜᵃᵛᵍ, pᵣₒₜᵈᵉᵛ, pᵣₒₜᵛᵃʳ) = round.((pᵣₒₜᵃᵛᵍ, pᵣₒₜᵈᵉᵛ, pᵣₒₜᵛᵃʳ), digits=1) # arredondamento dos resultados estatísticos
end

# ╔═╡ 4643e926-67e5-4ac5-a332-1895b992b981
md"""
Como esperado as perdas rotacionais são aproximadamente constantes, apresentando uma pequena variação de $(pᵣₒₜᵛᵃʳ)%, ao longo do ensaio *back-to-back*, em relação ao valor médio de $(pᵣₒₜᵃᵛᵍ)W:
"""

# ╔═╡ 361b5bbe-2fcd-4f96-8488-c52d9b2dbea5


# ╔═╡ 863fe345-3a98-46d6-9112-78ee18635ffe
begin
	pcᴹ = pᵣₒₜ + pₑₓᴹ
	pcᴳ = pᵣₒₜ + pₑₓᴳ
	pcᴹ, pcᴳ
end

# ╔═╡ bf4807d5-6fbb-43bc-9be3-475b2ad6e0f6
md"""
- Cálulo da potência útil do motor:
"""

# ╔═╡ 02cc64b1-79d8-44e9-b318-855fc77c86dc


# ╔═╡ ad8fdc0f-4059-4bec-98a5-8b38b5a17fd0
Pᵤᴹ¹ = U*Iₗᴳ+pₑₓᴳ+pⱼᴳ+pᵣₒₜ

# ╔═╡ 5d25244c-7d05-43af-a6a5-69fdb52a253e
Pᵤᴹ² = U*Iₗᴹ-pₑₓᴹ-pⱼᴹ-pᵣₒₜ

# ╔═╡ 901eaef2-2cff-4131-b19c-b43a88b35b34
begin
	dif=Pᵤᴹ¹-Pᵤᴹ² 			# diferença na fórmula de cálculo
	difₘₐₓ=maximum(dif)		# diferença máxima
end

# ╔═╡ 6f801fcc-ac53-4a91-a37b-1b35118f8b86


# ╔═╡ 076bd182-885d-4808-ba4a-9d125cd09957
md"""
### 4.2.1 - 💻 Exercício: potências e binários
"""

# ╔═╡ 99f6a01a-4a46-43dd-8ef9-a614302e29af
md"""
!!! challenge
	Para os objetivos definidos neste relatório não é necessário, mas adicionalmente poderá determinar-se a evolução de outras potências e binários de ambas as máquinas no ensaio *back-to-back*.
	
	Assim, utilizando os campos abaixo para código Julia, calcule e represente graficamente as seguintes potências e binários:

	- potência absorvidas do motor e gerador, $$P_{ab}^M$$ e $$P_{ab}^G$$
	- potências desenvolvidas do motor e gerador, $$P_d^M$$ e $$P_d^G$$
	- binários desenvolvidos do motor e gerador, $$T_d^M$$ e $$T_d^G$$
	- binário mecânico, $$T_u$$
	
	No final, analise comparativamente os resultados das potências e binários obtidos entre as máquinas DC.
"""

# ╔═╡ c4fd1d3b-9b18-48b3-a0fd-466fcb3e17ee
md"""
**Cálculos:**
"""

# ╔═╡ d780fb54-2677-481e-a228-478845fba613
#begin
	#Pabᴹ = 
	#Pabᴳ =  
	#
	#Pdᴹ = 
	#Pdᴳ = 
	#
	#Tdᴹ = 
	#Tdᴳ = 
	#
	#Tᵤ = 
#end

# ╔═╡ d65460a3-a703-44f6-aa42-a3dd47ae3034
md"""
**Gráficos:**
"""

# ╔═╡ 7bcd562e-970f-4614-94d0-41b8f47a5ff2
begin
	# Gráfico da esquerda:
	h1=plot( ylabel="Potências (kW)", xlabel="Corrente (A)", title="Motor vs Gerador")

	# Gráfico da direita:
	h2=plot( ylabel="Binários (Nm)", xlabel="Corrente (A)", title="Motor vs Gerador")
	
	#Disposição dos gráficos
	plot(h1, h2, layout = (1, 2))
end

# ╔═╡ 51f8e7ee-868e-47d9-bfa5-4ac06f37d942
md"""
**Análise:**



...



"""

# ╔═╡ 95fdbbc4-b612-4512-9069-6110e41f9e9d


# ╔═╡ bbdfee6a-fd4d-4220-aadf-9ceba2415a75
md"""
## 4.3 - Curvas de rendimento
"""

# ╔═╡ 884beeaf-d196-4d9a-9088-a3b88ff5670e
md"""
Cálculo dos pontos de rendimento do motor DC:
"""

# ╔═╡ 69892e4e-821b-4efa-b7f5-26bdbb5d0f8a
begin
	ηᴹ = Pᵤᴹ¹./(U*Iₗᴹ)
	ηᴹ = round.(ηᴹ*100, digits=1)		# percentagem e arredondamento
end

# ╔═╡ 1658f96c-7d15-4ed2-9f58-a161bc8b635f
md"""
Cálculo dos pontos de rendimento do gerador DC:
"""

# ╔═╡ 3ad1607a-66c4-42e2-a088-db1832fd1f32
begin
	#ηᴳ=(U*Iₗᴳ)./(U*Iₗᴹ-pⱼᴹ-pₑₓᴹ-pᵣₒₜ) 	# outra opção!
	ηᴳ = (U*Iₗᴳ)./(Pᵤᴹ¹)
	ηᴳ = round.(ηᴳ*100, digits=1) 		# percentagem e arredondamento
end

# ╔═╡ 49e3234a-c066-42bc-bc90-bf7699309286


# ╔═╡ 065d2711-a5b6-4fcd-8e99-919296af78cb
md"""
Cálculos auxiliares para determinação das linhas de tendência para o traçado das curvas de rendimento, perdas constantes e perdas variáveis calculadas, do motor e gerador, determinadas a partir dos dados de ensaio:
"""

# ╔═╡ 45757ac2-7db2-4ffa-bc5c-fb993eb6a991
begin
	# Cálculo da linha de tendência para curva de rendimento do motor: 
	Iₗᴹ_m = hcat(Iₗᴹ)						# converter o vetor de dados para matriz
	ηᴹ_m = hcat(ηᴹ)							# converter o vetor para matriz
	FIT_ηᴹ = fitexp(Iₗᴹ_m, ηᴹ_m, n=2)		# linha de tendência exponencial

	pcᴹ_m = hcat(pcᴹ)						# converter o vetor de dados para matriz
	FIT_pcᴹ = fitlinear(Iₗᴹ_m, pcᴹ_m)		# linha de tendência linear

	pⱼᴹ_m = hcat(pⱼᴹ)						# converter o vetor de dados para matriz
	FIT_pⱼᴹ = fitquad(Iₗᴹ_m, pⱼᴹ_m)			# linha de tendência quadrática

	# Cálculo da linha de tendência para curva de rendimento do gerador: 
	Iₗᴳ_m = hcat(Iₗᴳ)						# converter o vetor de dados para matriz
	ηᴳ_m = hcat(ηᴳ)							# converter o vetor de dados para matriz
	FIT_ηᴳ = fitexp(Iₗᴳ_m, ηᴳ_m, n=2)		# linha de tendência exponencial

	pcᴳ_m = hcat(pcᴳ)						# converter o vetor de dados para matriz
	FIT_pcᴳ = fitlinear(Iₗᴳ_m, pcᴳ_m)		# linha de tendência linear

	pⱼᴳ_m = hcat(pⱼᴳ)						# converter o vetor de dados para matriz
	FIT_pⱼᴳ = fitquad(Iₗᴳ_m, pⱼᴳ_m)			# linha de tendência quadrática
end;

# ╔═╡ debd87f9-13ee-4177-8245-c9cc4df1d157


# ╔═╡ 2a0e3a6a-0fd0-4f9e-ab54-2377d0761ba3
md"""
**Gráfico de curva de rendimento do motor DC, $$\:\eta^M=f(I_l^M)$$, e relação com as perdas "constantes", $$\:p_C^M=f(I_l^M)$$ e as perdas variáveis, $$\:p_J^M=f(I_l^M)$$:**
"""

# ╔═╡ 7ced39d8-26a1-497f-94fc-96d725ea6287
begin
	scatter(Iₗᴹ, ηᴹ, ylims=(70,90), ylabel="rendimento (%)", 
			right_margin = 15Plots.mm, bottom_margin = 5Plots.mm, mc=:orange, 
			legend=:topleft, label="ηᴹ, ensaio")# pontos de rendimento calculados
	plot!(FIT_ηᴹ.x, FIT_ηᴹ.y, title="Motor DC", label="ηᴹ", lw=2) # linha de tendência
	
	scatter!(twinx(), Iₗᴹ, pcᴹ, ylims=(0,800), xlabel="corrente de linha (A)")
	plot!(twinx(), FIT_pcᴹ.x, FIT_pcᴹ.y, ylims=(0,800), legend=:bottomright,
			ylabel="perdas (W)", label="pcᴹ", ls=:dash, lw=2)
	
	scatter!(twinx(), Iₗᴹ, pⱼᴹ, ylims=(0,800), mc=:green, 
			xlabel="corrente de linha (A)")
	plot!(twinx(), FIT_pⱼᴹ.x, FIT_pⱼᴹ.y, ylims=(0,800), legend=:topright,
			ylabel="perdas (W)", label="pⱼᴹ", ls=:dash, lw=2, lc=:green)
end

# ╔═╡ e9e3afa0-0b4d-4367-a7f9-acd8992a88a5


# ╔═╡ 1ee60c29-bb29-4d9c-a2d9-20fac192f89f
md"""
**Gráfico de curva de rendimento do gerador DC, $$\:\eta^G=f(I_l^G)$$, e relação com as perdas "constantes", $$\:p_C^G=f(I_l^G)$$ e as perdas variáveis, $$\:p_J^G=f(I_l^G)$$:**
"""

# ╔═╡ cd62422c-abd3-493d-a563-16520b237537
begin
	scatter(Iₗᴳ, ηᴳ, ylims=(50,90), ylabel="rendimento (%)", 
			right_margin = 15Plots.mm, bottom_margin = 5Plots.mm, mc=:orange, 
			legend=:topleft, label="ηᴳ, ensaio")# pontos de rendimento calculados
	plot!(FIT_ηᴳ.x, FIT_ηᴳ.y, title="Gerador DC", label="ηᴳ", lw=2) # linha de tendência
	
	scatter!(twinx(), Iₗᴳ, pcᴳ, ylims=(0,800), xlabel="corrente de linha (A)")
	plot!(twinx(), FIT_pcᴳ.x, FIT_pcᴳ.y, ylims=(0,800), legend=:bottomright,
			ylabel="perdas (W)", label="pcᴳ", ls=:dash, lw=2)
	
	scatter!(twinx(), Iₗᴳ, pⱼᴳ, ylims=(0,800), mc=:green, 
			xlabel="corrente de linha (A)")
	plot!(twinx(), FIT_pⱼᴳ.x, FIT_pⱼᴳ.y, ylims=(0,800), legend=:topright,
			ylabel="perdas (W)", label="pⱼᴳ", ls=:dash, lw=2, lc=:green)
end

# ╔═╡ 6c2bab0b-4785-413b-a851-0c0ab06c73a4


# ╔═╡ 830796ba-f8d6-4843-9297-e76492589d49
begin
	(pcᴹᵃᵛᵍ, pcᴳᵃᵛᵍ) = median.((pcᴹ, pcᴳ))				# média aritmética
	(pcᴹᵈᵉᵛ, pcᴳᵈᵉᵛ) = std.((pcᴹ, pcᴳ))					# desvio padrão
	# arredondamento dos resultados estatísticos:
	(pcᴹᵃᵛᵍ, pcᴳᵃᵛᵍ, pcᴹᵈᵉᵛ, pcᴳᵈᵉᵛ) = round.((pcᴹᵃᵛᵍ, pcᴳᵃᵛᵍ, pcᴹᵈᵉᵛ, pcᴳᵈᵉᵛ), digits=1) 

	# Variação percentual:
	pcᴹᵥₐᵣ = pcᴹᵈᵉᵛ * 100 / pcᴹᵃᵛᵍ
	pcᴳᵥₐᵣ = pcᴳᵈᵉᵛ * 100 / pcᴳᵃᵛᵍ
	(pcᴹᵥₐᵣ, pcᴳᵥₐᵣ) = round.((pcᴹᵥₐᵣ, pcᴳᵥₐᵣ), digits=1)
	
	# Apresentação de resultados:
	Text("Perdas constantes do motor DC, (média aritmética, desvio padrão) W:"), (pcᴹᵃᵛᵍ, pcᴹᵈᵉᵛ),  Text("Perdas constantes do gerador DC, (média aritmética, desvio padrão) W:"), (pcᴳᵃᵛᵍ, pcᴳᵈᵉᵛ) 
end

# ╔═╡ 1e3c4060-5d78-4159-bb2d-caf158d9a32d
md"""
Verifica-se apesar dos ligeiros declives, que as perdas "constantes" do motor e do gerador são efetivamente aproximadamente constantes, apresentando uma variação em relação ao valor médio, de $(pcᴹᵥₐᵣ)% e $(pcᴳᵥₐᵣ)%, respetivamente. 
"""

# ╔═╡ c870e56a-cc10-4f85-9767-af46d9845b6a
md"""
### 4.4.1 - Rendimento nominal
"""

# ╔═╡ 24331be7-d705-41e9-925a-ec76b80fa38f
begin
	(Iₙᴹ, Iₙᴳ) = (29, 16)					# correntes nomminais, A
	
	ηᴹ_I = LinearInterpolator(FIT_ηᴹ.x,FIT_ηᴹ.y)  	# interpolação linear da linha de tendência
	ηₙᴹ = ηᴹ_I(Iₙᴹ)									# rendimento nominal
	ηₙᴹ = round(ηₙᴹ, digits=1)

	ηᴳ_I = LinearInterpolator(FIT_ηᴳ.x,FIT_ηᴳ.y)
	ηₙᴳ = ηᴳ_I(Iₙᴳ)
	ηₙᴳ = round(ηₙᴳ, digits=1)

	Text("ηₙᴹ = $(ηₙᴹ)%"), Text(" 	ηₙᴳ = $(ηₙᴳ)%")
end

# ╔═╡ c674d531-be5a-45b6-b5be-480753f0135f
md"""
### 4.4.2 - Rendimento máximo
"""

# ╔═╡ 28563a65-dfbd-4143-a0ec-772e553a3fb9
md"""
Forma computacional para obtenção dos pontos de rendimento máximo, nas curvas, $$\:\eta^M=f(I_l^M)$$ e $$\:\eta^G=f(I_l^G)$$, (optativo em relação a uma leitura direta dos gráficos obtidos): 
"""

# ╔═╡ e12e7cc3-abe6-4f51-a8b0-9254dbade011
begin
	index1=argmax(FIT_ηᴹ.y) 	# encontrar a posição no vetor onde o valor é máximo
	ηₘₐₓᴹ=FIT_ηᴹ.y[index1]		# obter o rendimento máximo
	ηₘₐₓᴹ=round(ηₘₐₓᴹ, digits=1)
	I1=FIT_ηᴹ.x[index1]			# corrente correspondente ao rendimento máximo
	I1=round(I1, digits=1)
	
	index2=argmax(FIT_ηᴳ.y) 	# encontrar a posição no vetor onde o valor é máximo
	ηₘₐₓᴳ=FIT_ηᴳ.y[index2]		# obter rendimento máximo
	ηₘₐₓᴳ=round(ηₘₐₓᴳ, digits=1)
	I2=FIT_ηᴳ.x[index2]			# corrente correspondente ao rendimento máximo
	I2=round(I2, digits=1)
	
	Text("Ponto de rendimento máximo do motor DC: $(ηₘₐₓᴹ)% @ $(I1)A"),
	Text("Ponto de rendimento máximo do gerador DC: $(ηₘₐₓᴳ)% @ $(I2)A")
end

# ╔═╡ e40a1b59-ed60-4081-afbf-661373b8b3fa
md"""
Da análise às curvas de rendimento das máquinas DC, verificam-se os seguintes pontos de rendimento máximo:

- Gerador: $$\:\:I_l^G(\eta_{max}^G) =$$ $(I2) $$\rm A; \it \quad\eta_{max}^G =$$ $(ηₘₐₓᴳ) $$\rm\%$$
- Motor: $$\quad I_l^M(\eta_{max}^M) =$$ $(I1) $$\rm A; \it \quad\eta_{max}^M =$$ $(ηₘₐₓᴹ) $$\rm\%$$
"""

# ╔═╡ 291e034f-a119-4c9b-8a50-4a35cd54e055
md"""
Comparando os pontos de rendimento máximo obtidos, do motor e do gerador, relativamente às respetivas perdas, verifica-se uma boa aproximação à ....
"""

# ╔═╡ 6fcc30b8-08bd-4331-a6cd-032d2eaf4dae


# ╔═╡ dd826725-e976-4e34-8b17-8f8acd932d1b
md"""
Procura-se verificar a condição de rendimento máximo, ou seja, que o mesmo sucede quando as perdas variáveis são iguais às perdas constantes.
"""

# ╔═╡ c53871d4-c739-4dcf-ad6d-c5dced86c208


# ╔═╡ 83d8e64c-e9ab-4065-a056-f189e30e149c
md"""
# 5 - Conclusões
"""

# ╔═╡ 5ab45915-9446-4583-a7b0-2ff97a5808f4
md"""
## 5.1 - Considerações finais
"""

# ╔═╡ 0ec4b965-80c4-4b40-925a-f3dcb2fd0115
md"""
No ensaio *back-to-back* verifica-se que o mesmo consome pouca potência elétrica da rede DC, comparativamente com a potência nominal das máquinas ensaiadas.\
Após o arranque do motor DC e ajuste à velocidade nominal, este alimenta mecanicamente o gerador DC. Após ligar o gerador DC em paralelo com a rede DC (verificadas as condições para essa manobra), o gerador alimentará eletricamente o motor DC.\
Por conseguinte, a potência consumida da rede elétrica corresponde ao somatório das perdas do grupo motor-gerador.  Este fato é muito importante e permite concluir que o ensaio *back-to-back* pode possibilitar o ensaio em carga de máquinas elétricas de elevada potência, comparativamente com a potência disponível da rede DC para a realização do ensaio, desde que a mesma suporte o arranque reostático do motor DC.
"""

# ╔═╡ e7aae6a9-1fa7-48a1-9b11-8e60c69cf9c9
md"""
O funcionamento do ensaio *back-to-back* utiliza a regulação dos circuitos de excitação de ambas as máquinas DC. Por um, lado o reostato de campo do gerador DC ajusta a potência de saída do gerador (pois encontra-se ligado a uma rede DC de tensão constante), que por sua vez solicita mais potência mecânica oo motor DC (alimentado da mesma rede DC). Neste ajuste a velocidade poderá sofrer alguma variação significativa, sendo corrigida por atuação do reostato de campo do motor DC.

Estas variações nos reostato de campo e consequentes variações nas correntes de excitação das máquinas provocam pequenas variações nas perdas constantes, mas aceitáveis, o que ....  
... sobre as perdas constantes vs reostatos de campo.
"""

# ╔═╡ e4d17d82-b7f0-4070-9177-e6a1cebb4c24
md"""
## 5.2 - Perspetivas de desenvolvimento futuro
"""

# ╔═╡ 7787b512-37e0-4c2e-8d43-88433ce6c764


# ╔═╡ 8495592a-9619-4e2c-97fb-ef9f55f29f4d


# ╔═╡ 7ec2f5b9-5779-4f95-979d-96e23e742d5a
md"""
# *Notebook*
"""

# ╔═╡ cd3fb263-b2e7-4f2a-8603-117b51bcf25c
md"""
## Bibliotecas julϊ̇a
"""

# ╔═╡ 6bd294df-005b-4979-b2ee-39922b9223b7
md"""
*Links* para a documentação: [Plots](http://docs.juliaplots.org/latest/), [EasyFit](https://github.com/m3g/EasyFit.jl), [TypedTables](https://typedtables.juliadata.org/stable/), [Statistics](https://docs.julialang.org/en/v1/stdlib/Statistics/), [BasicInterpolators](https://markmbaum.github.io/BasicInterpolators.jl/dev/).
"""

# ╔═╡ 7ad8f4c0-360b-4129-a930-b7e953813154
begin
	# other stuff:
	isel_logo="https://www.isel.pt/sites/default/files/NoPath%20-%20Copy%402x_0.png"
	version=VERSION
	TableOfContents(title="Índice")
end

# ╔═╡ fd49ed4e-b3ab-4b3a-88b2-84f3edcea565
ThreeColumn(md"$(Resource(isel_logo, :height => 80))", md"
$\textbf{\color{green}{Licenciatura em Engenharia Eletrotécnica}}$
$\textbf{Máquinas Elétricas II}$", md"[![](https://img.shields.io/badge/GitHub_URL-notebook-C09107)](https://github.com/Ricardo-Luis/me2/blob/main/notebooks/DC/me2-tp-maq-dc-ex2.jl)") 

# ╔═╡ ba6e7ba4-1f8c-4756-a1d6-02f0c4fb2e84
TwoColumnWideRight(md"$(Resource(isel_logo, :height => 80))", md"
$\textbf{\color{green}{Licenciatura em Engenharia Eletrotécnica}}$
$\textbf{Máquinas Elétricas II}$")

# ╔═╡ 6fbbee2e-9055-41cc-878b-6b70e3589c1f
md"""
*Notebook* realizado em linguagem de computação científica Julia versão $(version).

**_Time to first plot_**: até cerca de 2.5 min.

**Computador**: Intel® Core™ i5-6300U CPU @ 2.40GHz; 20GB RAM.
"""

# ╔═╡ 2d15cc51-918d-4297-bfb1-b5abbebdda9d
md"""
!!! info
	No índice deste *notebook*, o tópico assinalado com "💻" requer a participação do estudante.
"""

# ╔═╡ 26d6c46c-a677-4a99-b851-543793a278dc
md"""
## Licença e autor
"""

# ╔═╡ 3627d7c0-014b-47b8-ac4c-9ddb16df5380
md"""
O conteúdo deste *notebook* é disponibilizado nos termos da licença *copyleft*:
"""

# ╔═╡ 7b798090-c27c-4deb-bd5f-8b59b1fabc45
html"""
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Licença Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />O trabalho <span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">Máquinas síncronas trifásicas: gerador síncrono de polos lisos, Exercício 2 (resolução computacional)</span> de <a xmlns:cc="http://creativecommons.org/ns#" href="https://ricardo-luis.github.io/me2" property="cc:attributionName" rel="cc:attributionURL">Ricardo Luís</a> está licenciado com uma Licença <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons - Atribuição-CompartilhaIgual 4.0 Internacional</a>.<br />Baseado no trabalho disponível em <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/Ricardo-Luis/notebooks/blob/main/ME2/AC_machines_Ex2.jl" rel="dct:source">https://github.com/Ricardo-Luis/notebooks/blob/main/ME2/AC_machines_Ex2.jl</a>.
"""

# ╔═╡ 3e8fda22-107d-48f3-86cd-ab24f1f2f1e1
md"""
As suas [questões](https://github.com/Ricardo-Luis/me2/issues) e/ou [sugestões de melhoria](https://github.com/Ricardo-Luis/me2/pulls) sobre este *notebook* são bem-vindas.

Para citar o conteúdo deste *notebook*, utilize o seguinte texto:
"""

# ╔═╡ 68561e10-85b3-4c28-bee1-f36a96ddf619
md"""
> **Ricardo Luís**. (2022). Documentos computacionais sobre Máquinas Elétricas II [coleção de *notebooks* de suporte a Máquinas Elétricas II, lecionada no curso LEE do ISEL]. Disponível: [https://ricardo-luis.github.io/me2](https://ricardo-luis.github.io/me2)
"""

# ╔═╡ 6456ddfc-577c-48e3-81cc-5907183337c7
md"""
---
"""

# ╔═╡ 3cfbc867-8d3f-42d3-954e-5a3572d9ac68
ThreeColumn(md" $$\text{Text content:}$$ [![](https://i.creativecommons.org/l/by-sa/4.0/80x15.png)](http://creativecommons.org/licenses/by-sa/4.0/)", md" $$\text{Code snippets:}$$ [$$\text{MIT License}$$](https://www.tldrlegal.com/l/mit)", md"[$$\text{Copyright }\textcopyright \text{ 2022 Ricardo Luís}$$](https://ricardo-luis.github.io/me2/)")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
BasicInterpolators = "26cce99e-4866-4b6d-ab74-862489e035e0"
EasyFit = "fde71243-0cda-4261-b7c7-4845bd106b21"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoTeachingTools = "661c6b06-c737-4d37-b85c-46df65de6f69"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
TypedTables = "9d95f2ec-7b3d-5a63-8d20-e2491e220bb9"

[compat]
BasicInterpolators = "~0.6.5"
EasyFit = "~0.5.5"
Plots = "~1.31.7"
PlutoTeachingTools = "~0.1.7"
PlutoUI = "~0.7.40"
TypedTables = "~1.4.1"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "ec56d4175651c3238c0b544f77886f61b3a95673"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "195c5505521008abea5aee4f96930717958eac6f"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.4.0"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.ArrayInterfaceCore]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "9cf64cccb109e9c567d82afd3bb24e83cae5e70e"
uuid = "30b0a656-2188-435a-8636-2ec0e6a096e2"
version = "0.1.18"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.AxisAlgorithms]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "WoodburyMatrices"]
git-tree-sha1 = "66771c8d21c8ff5e3a93379480a2307ac36863f7"
uuid = "13072b0f-2c55-5437-9ae7-d433b7a33950"
version = "1.0.1"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.BasicInterpolators]]
deps = ["LinearAlgebra", "Memoize", "Random"]
git-tree-sha1 = "56e59d20a2dfafdfe681c372ed67200efa43ad88"
uuid = "26cce99e-4866-4b6d-ab74-862489e035e0"
version = "0.6.5"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "80ca332f6dcb2508adba68f22f551adb2d00a624"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.3"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "38f7a08f19d8810338d4f5085211c7dfa5d5bdd8"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.4"

[[deps.CodeTracking]]
deps = ["InteractiveUtils", "UUIDs"]
git-tree-sha1 = "1833bda4a027f4b2a1c984baddcf755d77266818"
uuid = "da1fd8a2-8d9e-5ec2-8556-3022fb5608a2"
version = "1.1.0"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "ded953804d019afa9a3f98981d99b33e3db7b6da"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.0"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Random"]
git-tree-sha1 = "1fd869cc3875b57347f7027521f561cf46d1fcd8"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.19.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "d08c20eef1f2cbc6e60fd3612ac4340b89fea322"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.9"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[deps.CommonSubexpressions]]
deps = ["MacroTools", "Test"]
git-tree-sha1 = "7b8a93dba8af7e3b42fecabf646260105ac373f7"
uuid = "bbf7d656-a473-5ed7-a52c-81e309532950"
version = "0.3.0"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "5856d3031cdb1f3b2b6340dfdc66b6d9a149a374"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.2.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "fb21ddd70a051d882a1686a5a550990bbe371a95"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.4.1"

[[deps.Contour]]
git-tree-sha1 = "d05d9e7b7aedff4e5b51a029dced05cfb6125781"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.6.2"

[[deps.DataAPI]]
git-tree-sha1 = "fb5f5316dd3fd4c5e7c30a24d50643b73e37cd40"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.10.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "d1fff3a548102f48987a52a2e0d114fa97d730f0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.13"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.DensityInterface]]
deps = ["InverseFunctions", "Test"]
git-tree-sha1 = "80c3e8639e3353e5d2912fb3a1916b8455e2494b"
uuid = "b429d917-457f-4dbc-8f4c-0cc954292b1d"
version = "0.4.0"

[[deps.Dictionaries]]
deps = ["Indexing", "Random", "Serialization"]
git-tree-sha1 = "96dc5c5c8994be519ee3420953c931c55657a3f2"
uuid = "85a47980-9c8c-11e8-2b9f-f7ca1fa99fb4"
version = "0.3.24"

[[deps.DiffResults]]
deps = ["StaticArrays"]
git-tree-sha1 = "c18e98cba888c6c25d1c3b048e4b3380ca956805"
uuid = "163ba53b-c6d8-5494-b064-1a9d43ac40c5"
version = "1.0.3"

[[deps.DiffRules]]
deps = ["IrrationalConstants", "LogExpFunctions", "NaNMath", "Random", "SpecialFunctions"]
git-tree-sha1 = "992a23afdb109d0d2f8802a30cf5ae4b1fe7ea68"
uuid = "b552c78f-8df3-52c6-915a-8e097449b14b"
version = "1.11.1"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Distributions]]
deps = ["ChainRulesCore", "DensityInterface", "FillArrays", "LinearAlgebra", "PDMats", "Printf", "QuadGK", "Random", "SparseArrays", "SpecialFunctions", "Statistics", "StatsBase", "StatsFuns", "Test"]
git-tree-sha1 = "8579b5cdae93e55c0cff50fbb0c2d1220efd5beb"
uuid = "31c24e10-a181-5473-b8eb-7969acd0382f"
version = "0.25.70"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "5158c2b41018c5f7eb1470d558127ac274eca0c9"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.1"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.DualNumbers]]
deps = ["Calculus", "NaNMath", "SpecialFunctions"]
git-tree-sha1 = "5837a837389fccf076445fce071c8ddaea35a566"
uuid = "fa6b7ba4-c1ee-5f82-b5fc-ecf0adba8f74"
version = "0.6.8"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3f3a2501fa7236e9b911e0f7a588c657e822bb6d"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.3+0"

[[deps.EasyFit]]
deps = ["Interpolations", "LsqFit", "Parameters", "Statistics"]
git-tree-sha1 = "a48d552289581ce1f52790dec96f7c2f70882ec1"
uuid = "fde71243-0cda-4261-b7c7-4845bd106b21"
version = "0.5.5"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bad72f730e9e91c08d9427d5e8db95478a3c323d"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.4.8+0"

[[deps.Extents]]
git-tree-sha1 = "5e1e4c53fa39afe63a7d356e30452249365fba99"
uuid = "411431e0-e8b7-467b-b5e0-f676ba4f2910"
version = "0.1.1"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "Pkg", "Zlib_jll", "libaom_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "ccd479984c7838684b3ac204b716c89955c76623"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.2+0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FillArrays]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "Statistics"]
git-tree-sha1 = "3399bbad4c9e9a2fd372a54d7b67b3c7121b6402"
uuid = "1a297f60-69ca-5386-bcde-b61e274b549b"
version = "0.13.3"

[[deps.FiniteDiff]]
deps = ["ArrayInterfaceCore", "LinearAlgebra", "Requires", "Setfield", "SparseArrays", "StaticArrays"]
git-tree-sha1 = "5a2cff9b6b77b33b89f3d97a4d367747adce647e"
uuid = "6a86dc24-6348-571c-b903-95158fe2bd41"
version = "2.15.0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.ForwardDiff]]
deps = ["CommonSubexpressions", "DiffResults", "DiffRules", "LinearAlgebra", "LogExpFunctions", "NaNMath", "Preferences", "Printf", "Random", "SpecialFunctions", "StaticArrays"]
git-tree-sha1 = "187198a4ed8ccd7b5d99c41b69c679269ea2b2d4"
uuid = "f6369f11-7733-5829-9624-2563aa707210"
version = "0.10.32"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "d972031d28c8c8d9d7b41a536ad7bb0c2579caca"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.8+0"

[[deps.GR]]
deps = ["Base64", "DelimitedFiles", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Printf", "Random", "RelocatableFolders", "Serialization", "Sockets", "Test", "UUIDs"]
git-tree-sha1 = "cf0a9940f250dc3cb6cc6c6821b4bf8a4286cf9c"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.66.2"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Pkg", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "2d908286d120c584abbe7621756c341707096ba4"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.66.2+0"

[[deps.GeoInterface]]
deps = ["Extents"]
git-tree-sha1 = "fb28b5dc239d0174d7297310ef7b84a11804dfab"
uuid = "cf35fbd7-0cd7-5166-be24-54bfbe79505f"
version = "1.0.1"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "GeoInterface", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "a7a97895780dab1085a97769316aa348830dc991"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.3"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "a32d672ac2c967f3deb8a81d828afc739c838a06"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.68.3+2"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "Dates", "IniFile", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "59ba44e0aa49b87a8c7a8920ec76f8afe87ed502"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.3.3"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.HypergeometricFunctions]]
deps = ["DualNumbers", "LinearAlgebra", "OpenLibm_jll", "SpecialFunctions", "Test"]
git-tree-sha1 = "709d864e3ed6e3545230601f94e11ebc65994641"
uuid = "34004b35-14d8-5ef3-9330-4cdb6864b03a"
version = "0.3.11"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.Indexing]]
git-tree-sha1 = "ce1566720fd6b19ff3411404d4b977acd4814f9f"
uuid = "313cdc1a-70c2-5d6a-ae34-0150d3930a38"
version = "1.1.1"

[[deps.IniFile]]
git-tree-sha1 = "f550e6e32074c939295eb5ea6de31849ac2c9625"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.1"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Interpolations]]
deps = ["AxisAlgorithms", "ChainRulesCore", "LinearAlgebra", "OffsetArrays", "Random", "Ratios", "Requires", "SharedArrays", "SparseArrays", "StaticArrays", "WoodburyMatrices"]
git-tree-sha1 = "b7bc05649af456efc75d178846f47006c2c4c3c7"
uuid = "a98d9a8b-a2ab-59e6-89dd-64a1c18fca59"
version = "0.13.6"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "b3364212fb5d870f724876ffcd34dd8ec6d98918"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.7"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.IterTools]]
git-tree-sha1 = "fa6287a4469f5e048d763df38279ee729fbd44e5"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.4.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b53380851c6e6664204efb2e62cd24fa5c47e4ba"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.2+0"

[[deps.JuliaInterpreter]]
deps = ["CodeTracking", "InteractiveUtils", "Random", "UUIDs"]
git-tree-sha1 = "0f960b1404abb0b244c1ece579a0ec78d056a5d1"
uuid = "aa1ae85d-cabe-5617-a682-6adf51b2e16a"
version = "0.9.15"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "1a43be956d433b5d0321197150c2f94e16c0aaa0"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.16"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "7739f837d6447403596a75d19ed01fd08d6f56bf"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.3.0+3"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "42b62845d70a619f063a7da093d995ec8e15e778"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+1"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "3eb79b0ca5764d4799c06699573fd8f533259713"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.4.0+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "94d9c52ca447e23eac0c0f074effbcd38830deb5"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.18"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "5d4d2d9904227b8bd66386c1138cf4d5ffa826bf"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "0.4.9"

[[deps.LoweredCodeUtils]]
deps = ["JuliaInterpreter"]
git-tree-sha1 = "dedbebe234e06e1ddad435f5c6f4b85cd8ce55f7"
uuid = "6f1432cf-f94c-5a45-995e-cdbf5db27b0b"
version = "2.2.2"

[[deps.LsqFit]]
deps = ["Distributions", "ForwardDiff", "LinearAlgebra", "NLSolversBase", "OptimBase", "Random", "StatsBase"]
git-tree-sha1 = "91aa1442e63a77f101aff01dec5a821a17f43922"
uuid = "2fda8390-95c7-5789-9bda-21331edee243"
version = "0.12.1"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "Random", "Sockets"]
git-tree-sha1 = "ae6676d5f576ccd21b6789c2cbe2ba24fcc8075d"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.5"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Measures]]
git-tree-sha1 = "e498ddeee6f9fdb4551ce855a46f54dbd900245f"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.1"

[[deps.Memoize]]
deps = ["MacroTools"]
git-tree-sha1 = "2b1dfcba103de714d31c033b5dacc2e4a12c7caa"
uuid = "c03570c3-d221-55d1-a50c-7939bbd78826"
version = "0.4.4"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NLSolversBase]]
deps = ["DiffResults", "Distributed", "FiniteDiff", "ForwardDiff"]
git-tree-sha1 = "50310f934e55e5ca3912fb941dec199b49ca9b68"
uuid = "d41bc354-129a-5804-8e4c-c37616107c6c"
version = "7.8.2"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "a7c3d1da1189a1c2fe843a3bfa04d18d20eb3211"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OffsetArrays]]
deps = ["Adapt"]
git-tree-sha1 = "1ea784113a6aa054c5ebd95945fa5e52c2f378e7"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.12.7"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e60321e3f2616584ff98f0a4f18d98ae6f89bbb3"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.17+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.OptimBase]]
deps = ["NLSolversBase", "Printf", "Reexport"]
git-tree-sha1 = "9cb1fee807b599b5f803809e85c81b582d2009d6"
uuid = "87e2bd06-a317-5318-96d9-3ecbac512eee"
version = "2.0.2"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PCRE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b2a7af664e098055a7529ad1a900ded962bca488"
uuid = "2f80f16e-611a-54ab-bc61-aa92de5b98fc"
version = "8.44.0+0"

[[deps.PDMats]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "cf494dca75a69712a72b80bc48f59dcf3dea63ec"
uuid = "90014a1f-27ba-587c-ab20-58faa44d9150"
version = "0.11.16"

[[deps.Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "34c0e9ad262e5f7fc75b10a9952ca7692cfc5fbe"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.3"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "3d5bf43e3e8b412656404ed9466f1dcbf7c50269"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.4.0"

[[deps.Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Statistics"]
git-tree-sha1 = "8162b2f8547bc23876edd0c5181b27702ae58dce"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "3.0.0"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "9888e59493658e476d3073f1ce24348bdc086660"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.3.0"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "GeometryBasics", "JSON", "LaTeXStrings", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "UUIDs", "UnicodeFun", "Unzip"]
git-tree-sha1 = "a19652399f43938413340b2068e11e55caa46b65"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.31.7"

[[deps.PlutoHooks]]
deps = ["InteractiveUtils", "Markdown", "UUIDs"]
git-tree-sha1 = "072cdf20c9b0507fdd977d7d246d90030609674b"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0774"
version = "0.0.5"

[[deps.PlutoLinks]]
deps = ["FileWatching", "InteractiveUtils", "Markdown", "PlutoHooks", "Revise", "UUIDs"]
git-tree-sha1 = "0e8bcc235ec8367a8e9648d48325ff00e4b0a545"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0420"
version = "0.1.5"

[[deps.PlutoTeachingTools]]
deps = ["Downloads", "HypertextLiteral", "LaTeXStrings", "Latexify", "Markdown", "PlutoLinks", "PlutoUI", "Random"]
git-tree-sha1 = "67c917d383c783aeadd25babad6625b834294b30"
uuid = "661c6b06-c737-4d37-b85c-46df65de6f69"
version = "0.1.7"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "a602d7b0babfca89005da04d89223b867b55319f"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.40"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "c6c0f690d0cc7caddb74cef7aa847b824a16b256"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+1"

[[deps.QuadGK]]
deps = ["DataStructures", "LinearAlgebra"]
git-tree-sha1 = "3c009334f45dfd546a16a57960a821a1a023d241"
uuid = "1fd47b50-473d-5c70-9696-f719f8f3bcdc"
version = "2.5.0"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Ratios]]
deps = ["Requires"]
git-tree-sha1 = "dc84268fe0e3335a62e315a3a7cf2afa7178a734"
uuid = "c84ed2f1-dad5-54f0-aa8e-dbefe2724439"
version = "0.4.3"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase"]
git-tree-sha1 = "e7eac76a958f8664f2718508435d058168c7953d"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.6.3"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "22c5201127d7b243b9ee1de3b43c408879dff60f"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "0.3.0"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Revise]]
deps = ["CodeTracking", "Distributed", "FileWatching", "JuliaInterpreter", "LibGit2", "LoweredCodeUtils", "OrderedCollections", "Pkg", "REPL", "Requires", "UUIDs", "Unicode"]
git-tree-sha1 = "dad726963ecea2d8a81e26286f625aee09a91b7c"
uuid = "295af30f-e4ad-537b-8983-00126c2a3abe"
version = "3.4.0"

[[deps.Rmath]]
deps = ["Random", "Rmath_jll"]
git-tree-sha1 = "bf3188feca147ce108c76ad82c2792c57abe7b1f"
uuid = "79098fc4-a85e-5d69-aa6a-4863f24498fa"
version = "0.7.0"

[[deps.Rmath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "68db32dff12bb6127bac73c209881191bf0efbb7"
uuid = "f50d1b31-88e8-58de-be2c-1cc44531875f"
version = "0.3.0+0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "f94f779c94e58bf9ea243e77a37e16d9de9126bd"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.1"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "StaticArraysCore"]
git-tree-sha1 = "e2cc6d8c88613c05e1defb55170bf5ff211fbeac"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "1.1.1"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "874e8867b33a00e784c8a7e4b60afe9e037b74e1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.1.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "d75bda01f8c31ebb72df80a46c88b25d1c79c56d"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.7"

[[deps.SplitApplyCombine]]
deps = ["Dictionaries", "Indexing"]
git-tree-sha1 = "48f393b0231516850e39f6c756970e7ca8b77045"
uuid = "03a91e81-4c3e-53e1-a0a4-9c0c8f19dd66"
version = "1.2.2"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "StaticArraysCore", "Statistics"]
git-tree-sha1 = "dfec37b90740e3b9aa5dc2613892a3fc155c3b42"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.5.6"

[[deps.StaticArraysCore]]
git-tree-sha1 = "ec2bd695e905a3c755b33026954b119ea17f2d22"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.3.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f9af7f195fb13589dd2e2d57fdb401717d2eb1f6"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.5.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "d1bf48bfcc554a3761a133fe3a9bb01488e06916"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.21"

[[deps.StatsFuns]]
deps = ["ChainRulesCore", "HypergeometricFunctions", "InverseFunctions", "IrrationalConstants", "LogExpFunctions", "Reexport", "Rmath", "SpecialFunctions"]
git-tree-sha1 = "5783b877201a82fc0014cbf381e7e6eb130473a4"
uuid = "4c63d2b9-4356-54db-8cca-17b64c39e42c"
version = "1.0.1"

[[deps.StructArrays]]
deps = ["Adapt", "DataAPI", "StaticArraysCore", "Tables"]
git-tree-sha1 = "8c6ac65ec9ab781af05b08ff305ddc727c25f680"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.12"

[[deps.SuiteSparse]]
deps = ["Libdl", "LinearAlgebra", "Serialization", "SparseArrays"]
uuid = "4607b0f0-06f3-5cda-b6b1-a6196a1729e9"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "5ce79ce186cc678bbb5c5681ca3379d1ddae11a1"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.7.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "8a75929dcd3c38611db2f8d08546decb514fcadf"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.9"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.TypedTables]]
deps = ["Adapt", "Dictionaries", "Indexing", "SplitApplyCombine", "Tables", "Unicode"]
git-tree-sha1 = "ec72e7a68a6ffdc507b751714ff3e84e09135d9e"
uuid = "9d95f2ec-7b3d-5a63-8d20-e2491e220bb9"
version = "1.4.1"

[[deps.URIs]]
git-tree-sha1 = "e59ecc5a41b000fa94423a578d29290c7266fc10"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unzip]]
git-tree-sha1 = "34db80951901073501137bdbc3d5a8e7bbd06670"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.1.2"

[[deps.Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "3e61f0b86f90dacb0bc0e73a0c5a83f6a8636e23"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.19.0+0"

[[deps.Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4528479aa01ee1b3b4cd0e6faef0e04cf16466da"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.25.0+0"

[[deps.WoodburyMatrices]]
deps = ["LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "de67fa59e33ad156a590055375a30b23c40299d3"
uuid = "efce3f68-66dc-5838-9240-27a6d6f5f9b6"
version = "0.5.5"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "58443b63fb7e465a8a7210828c91c08b92132dff"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.9.14+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e45044cd873ded54b6a5bac0eb5c971392cf1927"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.2+0"

[[deps.libaom_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3a2ea60308f0996d26f1e5354e10c24e9ef905d4"
uuid = "a4ae2306-e953-59d6-aa16-d00cac43593b"
version = "3.4.0+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "9ebfc140cc56e8c2156a15ceac2f0302e327ac0a"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "1.4.1+0"
"""

# ╔═╡ Cell order:
# ╟─0c910bbe-9eb7-46cc-81c1-f9ccd460976b
# ╟─fd49ed4e-b3ab-4b3a-88b2-84f3edcea565
# ╟─c064e55c-6924-49b7-abbc-385a081c57b2
# ╟─12222dcc-7102-445a-801e-85b11b2b96c3
# ╟─01d6ccf1-a046-4386-95b9-7a8437e6bc48
# ╠═ba6e7ba4-1f8c-4756-a1d6-02f0c4fb2e84
# ╟─2653c6fc-3c84-4e08-a53b-d0d2d804f140
# ╟─339644c3-e4be-4181-a914-a1317e74f06c
# ╟─b3901cdf-5f76-4649-9de5-865a1e67e9d3
# ╟─aa438d59-98d7-41b6-b34d-aa55220cf04f
# ╟─57972b14-d0eb-49f2-a8fe-fbfa25eb2f43
# ╟─dcfb10ac-3a34-477f-ae1e-6a4b42fdc0d2
# ╠═5d618284-7f40-4d33-94a1-829407bd5f47
# ╟─39721ee5-b4f8-47ed-ae4f-0865952ebd28
# ╟─3010fa73-fdb8-4ad9-94dc-45db49ae7fcf
# ╟─f60d6cdd-7ff4-4a00-b2aa-a1440234ec6d
# ╟─e08c8f92-da7a-4ac8-bc4b-2c19aa014403
# ╟─c387e50c-5aac-4901-b1f3-51b690c38a56
# ╟─dfa54345-bcae-4350-aa43-72cd62b83d65
# ╟─eb5f4190-17a0-4bac-b2a2-1d35622f3d2c
# ╟─fce78f7b-dcdc-4ae3-918d-622db2f27269
# ╟─6fef9e1c-e321-4ef8-9140-dc4dbfe49936
# ╟─349d542f-024d-4982-867c-afa9e105db27
# ╟─f1b48849-a61f-4825-bcc8-ff12d3c09987
# ╟─e05493c5-1231-4fda-821c-65420c221551
# ╠═5bb9b54a-56f3-431c-b47c-75a58bff7d22
# ╟─494278aa-f24d-4168-8615-f7803495fafd
# ╠═080ba59a-6a4a-424e-8741-9b59332c2f86
# ╟─60cc12ac-6fe6-439b-a149-39ffa704ba8b
# ╠═a41a8eeb-c2bf-4025-8a91-a5654ba69ca7
# ╠═fd40f95e-9754-47d7-83a5-3e166947ecb7
# ╟─df5bc5cc-9d9d-41d7-9956-a5f9af31c4cf
# ╟─13d6e0d9-2cb9-4125-a406-c4caa0d63719
# ╟─3b9e9b0e-2805-4d48-8033-2eda3ee606e0
# ╠═eb03dfe8-a2ae-4e65-a28e-0cec0cfbe65b
# ╟─82103e6d-a4ab-44fa-a812-da593b506c89
# ╠═887a06bc-bcdf-4a63-b838-e2ef3f60c7cf
# ╟─398ed3f9-e634-4281-8bc6-5b4fb504e97e
# ╠═983f6e18-4913-4f32-a741-2d72f9ddd792
# ╟─3eb827b9-b335-4423-8597-34c935972313
# ╠═48fab47e-b551-4db7-83f1-cb99d348d6a5
# ╟─b32d55d7-80b2-45f1-abaf-ef8f6958e980
# ╠═f0132080-ad3c-47d1-b0e3-c9c7994c072f
# ╟─71a60d6f-1527-4537-952d-b490af18a935
# ╠═6a7b7432-cb54-445a-aa39-33a13fb958ba
# ╠═5bcefcd9-f30e-4b40-a1f0-b66ff862d963
# ╠═81298eb8-b548-42aa-9fea-fa502482578b
# ╟─1931180b-424d-43ba-af25-61e84faf0eaf
# ╟─7e48b1e0-b66c-4773-9189-b72e931b8520
# ╠═df08b5c7-d63b-430d-8869-a994ed85b73c
# ╟─0d8c4c17-1294-47ca-a993-c31099ef4640
# ╟─07eeed4a-6a40-4585-b04f-26da0157fe2e
# ╟─66ada8ac-6556-4d18-9cf3-cbdbf3f9bc69
# ╟─01e08f32-9f91-41f9-b022-ad877864a784
# ╟─d12d08d6-4c4c-4afc-b4e5-970f86a440e5
# ╠═2b7754b3-44b3-4a09-99e2-4827afbacc64
# ╟─9c117644-13d3-4de3-a30b-e626df7d6815
# ╠═fc62b652-0d92-49e4-ae27-fd04a6b1d8bd
# ╟─dff17723-bba8-491f-af37-9119e4ff4445
# ╠═1c048c68-2a41-4710-9d5d-e092abbfc7d9
# ╟─55483f43-ca65-4775-a4b7-b824295ad34d
# ╠═4cda0d79-6a76-4529-b70e-4eb0bf9c2451
# ╟─4643e926-67e5-4ac5-a332-1895b992b981
# ╠═0865009d-6d80-452b-b9e5-74b424f9b3c3
# ╠═361b5bbe-2fcd-4f96-8488-c52d9b2dbea5
# ╠═863fe345-3a98-46d6-9112-78ee18635ffe
# ╟─bf4807d5-6fbb-43bc-9be3-475b2ad6e0f6
# ╠═02cc64b1-79d8-44e9-b318-855fc77c86dc
# ╠═ad8fdc0f-4059-4bec-98a5-8b38b5a17fd0
# ╠═5d25244c-7d05-43af-a6a5-69fdb52a253e
# ╠═901eaef2-2cff-4131-b19c-b43a88b35b34
# ╟─6f801fcc-ac53-4a91-a37b-1b35118f8b86
# ╟─076bd182-885d-4808-ba4a-9d125cd09957
# ╟─99f6a01a-4a46-43dd-8ef9-a614302e29af
# ╟─c4fd1d3b-9b18-48b3-a0fd-466fcb3e17ee
# ╠═d780fb54-2677-481e-a228-478845fba613
# ╟─d65460a3-a703-44f6-aa42-a3dd47ae3034
# ╠═7bcd562e-970f-4614-94d0-41b8f47a5ff2
# ╠═51f8e7ee-868e-47d9-bfa5-4ac06f37d942
# ╟─95fdbbc4-b612-4512-9069-6110e41f9e9d
# ╟─bbdfee6a-fd4d-4220-aadf-9ceba2415a75
# ╟─884beeaf-d196-4d9a-9088-a3b88ff5670e
# ╠═69892e4e-821b-4efa-b7f5-26bdbb5d0f8a
# ╟─1658f96c-7d15-4ed2-9f58-a161bc8b635f
# ╠═3ad1607a-66c4-42e2-a088-db1832fd1f32
# ╟─49e3234a-c066-42bc-bc90-bf7699309286
# ╟─065d2711-a5b6-4fcd-8e99-919296af78cb
# ╠═45757ac2-7db2-4ffa-bc5c-fb993eb6a991
# ╟─debd87f9-13ee-4177-8245-c9cc4df1d157
# ╟─2a0e3a6a-0fd0-4f9e-ab54-2377d0761ba3
# ╟─7ced39d8-26a1-497f-94fc-96d725ea6287
# ╟─e9e3afa0-0b4d-4367-a7f9-acd8992a88a5
# ╟─1ee60c29-bb29-4d9c-a2d9-20fac192f89f
# ╟─cd62422c-abd3-493d-a563-16520b237537
# ╟─6c2bab0b-4785-413b-a851-0c0ab06c73a4
# ╟─1e3c4060-5d78-4159-bb2d-caf158d9a32d
# ╠═830796ba-f8d6-4843-9297-e76492589d49
# ╟─c870e56a-cc10-4f85-9767-af46d9845b6a
# ╠═24331be7-d705-41e9-925a-ec76b80fa38f
# ╟─c674d531-be5a-45b6-b5be-480753f0135f
# ╟─e40a1b59-ed60-4081-afbf-661373b8b3fa
# ╟─28563a65-dfbd-4143-a0ec-772e553a3fb9
# ╠═e12e7cc3-abe6-4f51-a8b0-9254dbade011
# ╠═291e034f-a119-4c9b-8a50-4a35cd54e055
# ╟─6fcc30b8-08bd-4331-a6cd-032d2eaf4dae
# ╟─dd826725-e976-4e34-8b17-8f8acd932d1b
# ╟─c53871d4-c739-4dcf-ad6d-c5dced86c208
# ╟─83d8e64c-e9ab-4065-a056-f189e30e149c
# ╟─5ab45915-9446-4583-a7b0-2ff97a5808f4
# ╟─0ec4b965-80c4-4b40-925a-f3dcb2fd0115
# ╠═e7aae6a9-1fa7-48a1-9b11-8e60c69cf9c9
# ╟─e4d17d82-b7f0-4070-9177-e6a1cebb4c24
# ╠═7787b512-37e0-4c2e-8d43-88433ce6c764
# ╟─8495592a-9619-4e2c-97fb-ef9f55f29f4d
# ╟─7ec2f5b9-5779-4f95-979d-96e23e742d5a
# ╟─cd3fb263-b2e7-4f2a-8603-117b51bcf25c
# ╟─6bd294df-005b-4979-b2ee-39922b9223b7
# ╠═e89303b7-3dbb-452c-bd71-ddaac5d22dc4
# ╟─6fbbee2e-9055-41cc-878b-6b70e3589c1f
# ╠═7ad8f4c0-360b-4129-a930-b7e953813154
# ╟─2d15cc51-918d-4297-bfb1-b5abbebdda9d
# ╟─26d6c46c-a677-4a99-b851-543793a278dc
# ╟─3627d7c0-014b-47b8-ac4c-9ddb16df5380
# ╟─7b798090-c27c-4deb-bd5f-8b59b1fabc45
# ╟─3e8fda22-107d-48f3-86cd-ab24f1f2f1e1
# ╟─68561e10-85b3-4c28-bee1-f36a96ddf619
# ╟─6456ddfc-577c-48e3-81cc-5907183337c7
# ╟─3cfbc867-8d3f-42d3-954e-5a3572d9ac68
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002

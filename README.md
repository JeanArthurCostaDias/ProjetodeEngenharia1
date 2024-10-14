# Projetos-1

## Resumo do Relatório
Este relatório descreve o processo de desenvolvimento e implementação do modelo CarbonFluxAI, projetado para prever a Troca Líquida de Carbono (NEE) em escala semanal na região de Santarém, Pará. Foram comparadas três arquiteturas de Redes Neurais Recorrentes: RNN clássica, LSTM e GRU. A avaliação dos modelos utilizou métricas como MAE, RMSE, coeficiente de correlação de Pearson e o coeficiente de determinação. O melhor modelo foi otimizado através de ajustes de hiperparâmetros e épocas, resultando em melhorias significativas na precisão e estabilidade das previsões.

## Justificativa
- Métodos tradicionais, como medições de campo, têm limitações em regiões vastas.
- Solução com Sensoriamento Remoto
  - Permite a coleta eficiente de dados em grandes áreas.
- Aplicação de IA
  - Gerencia grandes conjuntos de dados sequenciais.
  - Facilita a previsão do NEE e o monitoramento automatizado do fluxo de carbono.
  - Possibilita intervenções em áreas críticas e decisões antecipadas em projetos de conservação florestal.

## Objetivo
O objetivo do projeto é comparar diferentes arquiteturas de Redes Neurais Recorrentes (RNNs) para prever o NEE na região de Santarém, utilizando dados de sensoriamento remoto. Após essa comparação, o modelo de melhor desempenho é aprimorado para fornecer previsões mais precisas e estáveis, resultando no modelo CarbonFluxAI​.

## Detalhes de Implementação
- A configuração inicial dos modelos foi pré-definida pela biblioteca com as implementações utilizadas. 
- A previsão dos modelos consistiu na utilização de 7 valores passados para a previsão de 7 valores futuros;
  - Isso permitiu que os modelos compreendessem as dinâmicas do balanço de carbono ao longo de uma semana para prever a próxima semana.  O que pode ser benéfico para monitorar os efeitos de serviços ambientais em escala diária;
- A melhor versão de cada modelo foi selecionada com base na época que apresentou a menor média das perdas de treinamento e validação, RMSE e MAE.
  - Essa média possibilitou comparar os modelos mais acurados e que melhor compreenderam o comportamento do NEE.


Otimização do Modelo CarbonFluxAI
- Ferramenta Utilizada: Optuna
  - Tentativas Realizadas: 300 para otimizar todos os hiperparâmetros disponíveis.
  - Número de Épocas: Definido entre 10 e 100, com base em observações anteriores.
Validação do Modelo:
  - O modelo otimizado, CarbonFluxAI, foi comparado com outros modelos.
  - A validação incluiu pixels próximos para garantir tanto a validade temporal quanto espacial.

## Conclusão

- O CarbonFluxAI apresentou uma melhoria significativa na previsão do NEE em relação às outras arquiteturas de RNN testadas.
- A solução teve sua eficácia comprovada em termos espaciais (validação em píxels próximos) e temporais (validação com métricas de erro ao longo do tempo) para monitorar e prever as dinâmicas de carbono na região. sendo uma ferramenta promissora para apoiar iniciativas de conservação ambiental.
- Limitações observadas:
   - Apenas um sítio de estudo foi utilizado para avaliar o desempenho do modelo.
   - A utilização de uma janela de previsão de 7 dias pode não capturar completamente as dinãmicas de longo prazo do ciclo de carbono
   - Eventos climáticos extremos ou variações sazonais podem não ser capturados nas medições diárias

- Trabalhos Futuros
   - Generalizar a abordagem para uma área mais ampla e diversa.
   - Incorporação de Variáveis Espaciais: Será adicionado ao treinamento do modelo para explicar melhor as variações de NEE.

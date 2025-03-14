// DECLARANDO QUAL PINO RECEBERÁ O VALOR COLETADO PELO SENSOR
const int PINO_SENSOR_UMIDADE_SOLO = A5;

void setup()
{
  // DECLARANDO A FREQUÊNCIA DE ATUALIZAÇÃO DE BITS
  Serial.begin(9600);
  // DECLARANDO O TIPO DE ATIVIDADE DO PINO (INPUT)
  pinMode(PINO_SENSOR_UMIDADE_SOLO, INPUT);
}

void loop()
{
  // DECLARANDO A VARIÁVEL QUE RECEBE O VALOR COLETADO PELO SENSOR DE UMIDADE
  int leituraSensor = analogRead(PINO_SENSOR_UMIDADE_SOLO);

  /*
  DECLARANDO A VARIÁVEL QUE CONVERTE DO VALOR RECEBIDO DO SENSOR, DE BYTE PARA MEGABYTE,
  DEPOIS MULTIPLICANDO POR 100 PARA MOSTRAR O RESULTADO EM PORCENTAGEM
  FASE DE MATURAÇÃO: UMIDADE TEM QUE SER DE 30 A 40%
  */
  float porcentagemUmidade = (100 - ((leituraSensor / 1023.0) * 100)) - 42;

  /*
  MOSTRA NO CONSOLE O VALOR DA UMIDADE REGISTRADA
  MOSTRA NO GRÁFICO O COMPORTAMENTO DOS DADOS, ESTABELECENDO LABEL
  DE UMIDADE MAXIMA E MINIMA PARA AUXÍLIO
  */
  Serial.print("UmidadeMax:");
  Serial.print(40);
  Serial.print(" ");
  Serial.print("UmidadeSolo:");
  Serial.print(porcentagemUmidade);
  Serial.print(" ");
  Serial.print("UmidadeMin:");
  Serial.println(30);

  if (porcentagemUmidade < 0) {
    porcentagemUmidade = 0;
  }

  // AGUARDA 1 SEGUNDO PARA EXECUTAR OS COMANDOS DENTRO DO LOOP NOVAMENTE
  delay(1000);
}

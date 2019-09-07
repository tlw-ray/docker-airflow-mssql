from builtins import range
from datetime import timedelta

import airflow
from airflow.models import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.operators.dummy_operator import DummyOperator

dag = DAG(
  dag_id = 'my1',
  owner = 'tlw',
  start_data =  airflow.utils.dates.days_ago(2),
  schedule_interval = timedelta(seconds=5),
)

op_pwd = BashOperator(
  task_id ='op_pwd',
  bash_command ='echo ${pwd}',
  dag = dag,
)

op_date = BashOperator(
  task_id = 'op_date',
  bash_command = 'date',
  dag = dag,
)

op_pwd >> op_date

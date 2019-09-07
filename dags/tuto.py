"""
Code that goes along with the Airflow located at:
http://airflow.readthedocs.org/en/latest/tutorial.html
"""
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from datetime import datetime, timedelta


default_args = {
    "owner": "airflow",
    "depends_on_past": False,
    "start_date": datetime(2019, 9, 6),
}

dag = DAG("my1", default_args=default_args, schedule_interval=timedelta(seconds = 5))

t1 = BashOperator(task_id="print_date", bash_command="date", dag=dag)

t1

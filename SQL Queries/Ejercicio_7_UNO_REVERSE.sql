# UNLIMITED POWEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEER
# Script to delete all tables content in EJ_7_Organigrama in case I #### up

use organigrama;

delete ignore from nomina;
delete ignore from contrato;
delete ignore from empleado_departamento;
delete ignore from empleado;
delete from categoria;
delete from departamento;
alter table contrato auto_increment = 0;
alter table nomina auto_increment = 0;

# >:)
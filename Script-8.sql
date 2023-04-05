select a.nm_pessoa, 
b.ds_endereco,
nr_cep,
nm_pessoa 
from pessoa a
left join pessoa_end b ON b.cd_pessoa = a.cd_pessoa 
left join cidade c on b.cd_cidade = c.cd_cidade;

select a.ds_item,
b.ds_unidade,
c."data",
c.qt_mov
from item a
left join unidade b on b.sg_unidade = a.sg_unidade  
left join estoque c on c.cd_item = a.cd_item; 

select nm_pessoa,
b.cd_pedido,
b.tp_pedido 
from pessoa a
inner join pedido b on a.cd_pessoa = b.cd_pedido;

select a.ds_natureza,
b.cd_pedido,
b.tp_pedido 
from natureza a
inner join pedido b on a.cd_natureza = b.cd_natureza;

select a.ds_item,
b.qt_mov,
b.vl_unitario
from item a
inner join estoque b on b.cd_item = a.cd_item;

select a.cd_pedido,
a.tp_pedido,
b."data",
c.nm_pessoa,
b.qt_pedida,
d.ds_item,
e.ds_unidade 
from pedido a
left join pedidoitem b on a.cd_pedido = b.cd_pedido 
left join pessoa c ON c.cd_pessoa = a.cd_pessoa 
left join item d on d.cd_item = b.cd_item 
left join unidade e on e.sg_unidade = d.sg_unidade; 




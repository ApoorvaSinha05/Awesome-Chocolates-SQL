#What are the names of salespersons who had 
#at least one shipment (sale) in the first 7 days of January 2022?

select distinct p.Salesperson
from sales s
join people p 
on p.spid = s.spid
where s.SaleDate between '2022-01-01' and '2022-01-07';


select distinct p.Salesperson, count(*) as 'Shipment Count'
from sales s
join people p 
on p.spid = s.SPID
where s.SaleDate between '2022-01-01' and '2022-01-07'
group by p.Salesperson;

#Which salespersons did not make any shipments 
#in the first 7 days of January 2022?

select p.salesperson
from people p
where p.spid not in
(select distinct s.spid
from sales s 
where s.SaleDate between '2022-01-01' and '2022-01-07');


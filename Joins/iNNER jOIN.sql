USE bdEstoque


--A)Listar as descrições dos produtos ao lado do nome dos fabricantes
SELECT descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante

--B)Listar as descrições dos produtos ao lado do nome dos fornecedores;
SELECT descricaoProduto, nomeFornecedor FROM tbProduto 
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor

--C)Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;
SELECT nomeFabricante, SUM(quantidadeProduto)'Soma das quantidades dos produtos'  FROM tbFabricante
	INNER JOIN tbProduto ON tbFabricante.idFabricante = tbProduto.idFabricante
	GROUP BY nomeFabricante

--D)Listar o total das vendas ao lado do nome do cliente;


--E)Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;

SELECT nomeFornecedor, AVG(valorProduto)'Média de preços dos produtos' FROM tbFornecedor
	INNER JOIN tbProduto ON tbFornecedor.idFornecedor = tbProduto.idFornecedor
	GROUP BY nomeFornecedor


--F)Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética;
	

--G)Listar a soma dos preços dos produtos agrupados pelo nome do fabricante;
SELECT nomeFabricante, SUM(valorProduto) 'Soma dos preços dos produtos' FROM tbFabricante
	INNER JOIN tbProduto ON tbFabricante.idFabricante = tbProduto.idFabricante
	GROUP BY nomeFabricante


--H)Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;
	

--I)Listar a soma das vendas agrupadas pelo nome do produto
SELECT descricaoProduto, SUM(valorTotalVenda) 'Total de vendas por produto' FROM tbProduto
    INNER JOIN tbVendas ON tbProduto.idProduto = tbVendas.idProduto
	GROUP BY descricaoProduto


--J)Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
	
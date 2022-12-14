USE [StoredProcedureEFDemo]
GO
/****** Object:  StoredProcedure [dbo].[AddNewProduct]    Script Date: 10/29/2022 7:36:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[AddNewProduct]
@ProductName [nvarchar](max),
@ProductDescription [nvarchar](max),
@ProductPrice int,
@ProductStock int
AS
BEGIN
	INSERT INTO dbo.Product
		(
			ProductName,
			ProductDescription,
			ProductPrice,
			ProductStock
		)
    VALUES
		(
			@ProductName,
			@ProductDescription,
			@ProductPrice,
			@ProductStock
		)
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePrductByID]    Script Date: 10/29/2022 7:36:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeletePrductByID]
@ProductId int
AS
BEGIN
	DELETE FROM dbo.Product where ProductId = @ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[GetPrductByID]    Script Date: 10/29/2022 7:36:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetPrductByID]
@ProductId int
AS
BEGIN
	SELECT
		ProductId,
		ProductName,
		ProductDescription,
		ProductPrice,
		ProductStock
	FROM dbo.Product where ProductId = @ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[GetPrductList]    Script Date: 10/29/2022 7:36:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetPrductList]
AS
BEGIN
	SELECT * FROM dbo.Product
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 10/29/2022 7:36:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[UpdateProduct]
@ProductId int,
@ProductName [nvarchar](max),
@ProductDescription [nvarchar](max),
@ProductPrice int,
@ProductStock int
AS
BEGIN
	UPDATE dbo.Product
    SET
		ProductName = @ProductName,
		ProductDescription = @ProductDescription,
		ProductPrice = @ProductPrice,
		ProductStock = @ProductStock
	WHERE ProductId = @ProductId
END
GO

.class public Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private columnTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_title"
    .end annotation
.end field

.field private columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/column/Column;",
            ">;"
        }
    .end annotation
.end field

.field private currentPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_page"
    .end annotation
.end field

.field private totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_count"
    .end annotation
.end field

.field private totalPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->columnTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/column/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->columns:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->currentPage:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->totalPage:I

    return v0
.end method

.method public setColumnTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->columnTitle:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setColumns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/column/Column;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->columns:Ljava/util/List;

    .line 91
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->currentPage:I

    .line 71
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->totalCount:I

    .line 61
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->totalPage:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnList [totalPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string v1, ", columnTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->columnTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;->columns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

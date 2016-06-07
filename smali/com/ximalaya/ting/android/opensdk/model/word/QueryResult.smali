.class public Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private highlightKeyword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "highlight_keyword"
    .end annotation
.end field

.field private keyword:Ljava/lang/String;

.field private queryId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighlightKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->highlightKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->queryId:J

    return-wide v0
.end method

.method public setHighlightKeyword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->highlightKeyword:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->keyword:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setQueryId(J)V
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->queryId:J

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueryResult [queryId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->queryId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string v1, ", highlightKeyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;->highlightKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

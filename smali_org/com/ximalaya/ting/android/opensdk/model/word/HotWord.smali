.class public Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private degree:I

.field private searchword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "search_word"
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
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->count:I

    return v0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->degree:I

    return v0
.end method

.method public getSearchword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->searchword:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->count:I

    .line 63
    return-void
.end method

.method public setDegree(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->degree:I

    .line 53
    return-void
.end method

.method public setSearchword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->searchword:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotWord [searchword="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->searchword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/HotWord;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 55
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getKeyLength()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    array-length v0, v0

    goto :goto_0
.end method

.method public getKeys()[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->ok:Z

    return v0
.end method

.method public setKeys([Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->keys:[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    .line 19
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->ok:Z

    .line 27
    return-void
.end method

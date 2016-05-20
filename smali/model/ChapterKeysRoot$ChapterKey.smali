.class public Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _id:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->key:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->_id:Ljava/lang/String;

    .line 39
    return-void
.end method

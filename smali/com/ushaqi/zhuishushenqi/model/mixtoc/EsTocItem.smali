.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapter_name:Ljava/lang/String;

.field private curl:Ljava/lang/String;

.field private sort:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapter_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->chapter_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->curl:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->sort:I

    return v0
.end method

.method public setChapter_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->chapter_name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setCurl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->curl:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSort(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->sort:I

    .line 21
    return-void
.end method

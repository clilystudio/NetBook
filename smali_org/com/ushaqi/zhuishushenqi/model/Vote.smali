.class public Lcom/ushaqi/zhuishushenqi/model/Vote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/Vote;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ushaqi/zhuishushenqi/model/Vote;)I
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Vote;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/model/Vote;->compareTo(Lcom/ushaqi/zhuishushenqi/model/Vote;)I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Vote;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Vote;->count:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Vote;->content:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Vote;->count:I

    .line 28
    return-void
.end method

.class public Lcom/ushaqi/zhuishushenqi/model/Chapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x65c25aadc2d76320L


# instance fields
.field private body:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private cpContent:Ljava/lang/String;

.field private currency:I

.field private id:Ljava/lang/String;

.field private isVip:Z

.field protected link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->cpContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->cpContent:Ljava/lang/String;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCpContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->cpContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->currency:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->link:Ljava/lang/String;

    return-object v0
.end method

.method public isVip()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->isVip:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->body:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->content:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCpContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->cpContent:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCurrency(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->currency:I

    .line 83
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->id:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setIsVip(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->isVip:Z

    .line 55
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Chapter;->link:Ljava/lang/String;

    .line 39
    return-void
.end method

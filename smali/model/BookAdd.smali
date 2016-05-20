.class public Lcom/ushaqi/zhuishushenqi/model/BookAdd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private book:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->book:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->code:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->ok:Z

    return v0
.end method

.method public setBook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->book:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->code:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->ok:Z

    .line 29
    return-void
.end method

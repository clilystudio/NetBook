.class public Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private help:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

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
.method public getHelp()Lcom/ushaqi/zhuishushenqi/model/BookHelp;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;->help:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;->ok:Z

    return v0
.end method

.method public setHelp(Lcom/ushaqi/zhuishushenqi/model/BookHelp;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;->help:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;->ok:Z

    .line 20
    return-void
.end method

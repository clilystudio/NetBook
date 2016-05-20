.class public Lcom/ushaqi/zhuishushenqi/model/Account;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64dd3c770749a809L


# instance fields
.field private code:Ljava/lang/String;

.field private ok:Z

.field private token:Ljava/lang/String;

.field private user:Lcom/ushaqi/zhuishushenqi/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/ushaqi/zhuishushenqi/model/User;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->code:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->ok:Z

    .line 34
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->token:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Account;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    .line 22
    return-void
.end method

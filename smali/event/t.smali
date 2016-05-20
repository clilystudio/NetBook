.class public final Lcom/ushaqi/zhuishushenqi/event/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/event/t;->a:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/t;->a:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/event/t;->b:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    .line 35
    return-void
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/t;->b:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    return-object v0
.end method

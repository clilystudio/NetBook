.class final Lcom/ushaqi/zhuishushenqi/ui/user/i;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/DeleteResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/i;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;B)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/DeleteResult;
    .locals 3

    .prologue
    .line 218
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/i;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/DeleteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/i;->a()Lcom/ushaqi/zhuishushenqi/model/DeleteResult;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/ushaqi/zhuishushenqi/reader/bo;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/PayBalance;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 2581
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bo;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V
    .locals 0

    .prologue
    .line 2581
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bo;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    .locals 2

    .prologue
    .line 2586
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2590
    :goto_0
    return-object v0

    .line 2587
    :catch_0
    move-exception v0

    .line 2588
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2590
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2581
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/bo;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2581
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PayBalance;

    .line 3595
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bo;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "user_account_balance"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->getBalance()I

    move-result v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->getVoucherBalance()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2581
    :cond_0
    return-void
.end method

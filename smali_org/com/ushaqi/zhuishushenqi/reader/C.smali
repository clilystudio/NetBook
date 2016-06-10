.class final Lcom/ushaqi/zhuishushenqi/reader/C;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/PayBalance;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/C;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    .line 930
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    .locals 2

    .prologue
    .line 936
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

    .line 940
    :goto_0
    return-object v0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 940
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 927
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/C;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 927
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PayBalance;

    .line 1945
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/C;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user_account_balance"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->getBalance()I

    move-result v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->getVoucherBalance()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1947
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/C;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;Z)Z

    .line 1948
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/C;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e()V

    .line 1949
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/C;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;Z)Z

    :goto_0
    return-void

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/C;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u4f59\u989d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u8def\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

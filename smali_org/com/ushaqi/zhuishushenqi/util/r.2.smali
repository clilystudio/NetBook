.class final Lcom/ushaqi/zhuishushenqi/util/r;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/p;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/util/p;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/r;->a:Lcom/ushaqi/zhuishushenqi/util/p;

    .line 43
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;
    .locals 1

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c()Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/r;->a()Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 40
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;

    .line 1058
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;->getTypes()[Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;->getTypes()[Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    move-result-object v0

    .line 1060
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/r;->a:Lcom/ushaqi/zhuishushenqi/util/p;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/p;->a(Lcom/ushaqi/zhuishushenqi/util/p;[Lcom/ushaqi/zhuishushenqi/model/ChargeType;)V

    .line 1061
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/r;->a:Lcom/ushaqi/zhuishushenqi/util/p;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/p;->a(Lcom/ushaqi/zhuishushenqi/util/p;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u652f\u4ed8\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

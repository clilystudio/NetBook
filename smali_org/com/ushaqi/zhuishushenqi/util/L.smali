.class final Lcom/ushaqi/zhuishushenqi/util/L;
.super Lcom/ushaqi/zhuishushenqi/util/S;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/S",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/Root;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/J;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/J;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/L;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/S;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->L(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/L;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/J;->a(I)V

    .line 90
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/w;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/L;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/util/J;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->j(Landroid/content/Context;)V

    .line 92
    return-void
.end method

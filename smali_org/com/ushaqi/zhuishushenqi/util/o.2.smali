.class final Lcom/ushaqi/zhuishushenqi/util/o;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/util/m;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/util/m;Landroid/app/Activity;ZZ)V
    .locals 1

    .prologue
    .line 239
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/o;->b:Lcom/ushaqi/zhuishushenqi/util/m;

    .line 240
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;IZ)V

    .line 241
    iput-boolean p4, p0, Lcom/ushaqi/zhuishushenqi/util/o;->a:Z

    .line 242
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/util/o;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 236
    check-cast p1, Ljava/util/List;

    .line 1256
    if-nez p1, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/o;->b:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/util/m;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u8d44\u6e90\u7ad9\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1263
    :goto_0
    return-void

    .line 1259
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/o;->b:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/util/m;Z)Z

    .line 1262
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/o;->a:Z

    if-eqz v0, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/o;->b:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/util/m;Ljava/util/List;)V

    goto :goto_0

    .line 1265
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/o;->b:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/m;->b(Lcom/ushaqi/zhuishushenqi/util/m;Ljava/util/List;)V

    goto :goto_0
.end method

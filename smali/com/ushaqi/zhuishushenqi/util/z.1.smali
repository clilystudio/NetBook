.class final Lcom/ushaqi/zhuishushenqi/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/util/y;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/y;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/z;->b:Lcom/ushaqi/zhuishushenqi/util/y;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/z;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/z;->b:Lcom/ushaqi/zhuishushenqi/util/y;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/util/y;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->get_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->B(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

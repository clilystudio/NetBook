.class final Lcom/ushaqi/zhuishushenqi/ui/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/r;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/db/BookFile;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 0

    .prologue
    .line 110
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cm;->a:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cm;->a:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->I(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/l;->c()Lcom/koushikdutta/async/http/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/b/h;->a()Lcom/koushikdutta/async/http/b/e;

    move-result-object v1

    const-string v2, "Content-Disposition"

    const-string v3, "attachment"

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/io/File;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "error"

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

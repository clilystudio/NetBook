.class final Lcom/ushaqi/zhuishushenqi/ui/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/server/l;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/cs;Lcom/koushikdutta/async/http/server/l;)V
    .locals 0

    .prologue
    .line 261
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cv;->a:Lcom/koushikdutta/async/http/server/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cv;->a:Lcom/koushikdutta/async/http/server/l;

    const-string v1, "upload success"

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/lang/String;)V

    .line 265
    return-void
.end method

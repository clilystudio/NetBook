.class final Lcom/ushaqi/zhuishushenqi/ui/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/g;


# instance fields
.field final synthetic a:[Ljava/lang/Boolean;

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/ui/cs;

.field private synthetic c:Lcom/koushikdutta/async/http/a/d;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/cs;Lcom/koushikdutta/async/http/a/d;[Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/cs;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ct;->c:Lcom/koushikdutta/async/http/a/d;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/ct;->a:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/a/h;)V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ct;->c:Lcom/koushikdutta/async/http/a/d;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/cu;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/cu;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ct;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a/d;->a(Lcom/koushikdutta/async/a/b;)V

    .line 258
    :cond_0
    return-void
.end method

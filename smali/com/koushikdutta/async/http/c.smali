.class final Lcom/koushikdutta/async/http/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/b;

.field private synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/b;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/koushikdutta/async/http/c;->a:Lcom/koushikdutta/async/http/b;

    iput-object p2, p0, Lcom/koushikdutta/async/http/c;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/c;->a:Lcom/koushikdutta/async/http/b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/b;->a(Lcom/koushikdutta/async/http/b;Ljava/lang/Exception;)V

    .line 58
    return-void
.end method

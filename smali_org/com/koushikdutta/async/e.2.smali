.class final Lcom/koushikdutta/async/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/v;

.field private synthetic b:Lcom/koushikdutta/async/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d;Lcom/koushikdutta/async/v;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/e;->b:Lcom/koushikdutta/async/d;

    iput-object p2, p0, Lcom/koushikdutta/async/e;->a:Lcom/koushikdutta/async/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/e;->b:Lcom/koushikdutta/async/d;

    iget-object v1, p0, Lcom/koushikdutta/async/e;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/d;->a(Lcom/koushikdutta/async/v;)V

    .line 70
    return-void
.end method

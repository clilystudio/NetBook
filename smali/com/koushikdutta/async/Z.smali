.class final Lcom/koushikdutta/async/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/koushikdutta/async/Z;->b:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/koushikdutta/async/Z;->a:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/Z;->a:Z

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/Z;->b:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

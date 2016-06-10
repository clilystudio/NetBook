.class final Lcom/koushikdutta/async/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/C;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/C;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/D;->a:Lcom/koushikdutta/async/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/D;->a:Lcom/koushikdutta/async/C;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/C;->a_(Ljava/lang/Exception;)V

    .line 25
    return-void
.end method

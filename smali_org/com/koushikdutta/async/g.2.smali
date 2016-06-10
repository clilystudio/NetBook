.class final Lcom/koushikdutta/async/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/koushikdutta/async/g;->a:Lcom/koushikdutta/async/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/koushikdutta/async/g;->a:Lcom/koushikdutta/async/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/d;->f()V

    .line 298
    return-void
.end method

.class final Lcom/koushikdutta/async/h;
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
    .line 323
    iput-object p1, p0, Lcom/koushikdutta/async/h;->a:Lcom/koushikdutta/async/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/koushikdutta/async/h;->a:Lcom/koushikdutta/async/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/d;->g()V

    .line 327
    return-void
.end method

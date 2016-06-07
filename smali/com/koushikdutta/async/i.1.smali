.class final Lcom/koushikdutta/async/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/V;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/V;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/V;

    invoke-virtual {v0}, Lcom/koushikdutta/async/V;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    const-string v0, "NIO"

    const-string v1, "Selector Exception? L Preview?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

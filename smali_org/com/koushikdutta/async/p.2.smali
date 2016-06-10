.class final Lcom/koushikdutta/async/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/koushikdutta/async/p;->a:Ljava/lang/Runnable;

    .line 205
    iput-wide p2, p0, Lcom/koushikdutta/async/p;->b:J

    .line 206
    return-void
.end method

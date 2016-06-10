.class final Lcom/koushikdutta/async/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/nio/ByteBuffer;

.field private synthetic b:Lcom/koushikdutta/async/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/d;

    iput-object p2, p0, Lcom/koushikdutta/async/f;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/d;

    iget-object v1, p0, Lcom/koushikdutta/async/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/d;->a(Ljava/nio/ByteBuffer;)V

    .line 113
    return-void
.end method

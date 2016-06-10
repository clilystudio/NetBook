.class final Lcom/xiaomi/a/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/xiaomi/a/a/b/d;

.field private synthetic b:Lcom/xiaomi/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/b/b;Lcom/xiaomi/a/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/b/f;->b:Lcom/xiaomi/a/a/b/b;

    iput-object p2, p0, Lcom/xiaomi/a/a/b/f;->a:Lcom/xiaomi/a/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/b/f;->b:Lcom/xiaomi/a/a/b/b;

    iget-object v1, p0, Lcom/xiaomi/a/a/b/f;->a:Lcom/xiaomi/a/a/b/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/b/b;->a(Lcom/xiaomi/a/a/b/d;)V

    return-void
.end method

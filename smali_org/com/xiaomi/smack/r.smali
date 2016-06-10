.class final Lcom/xiaomi/smack/r;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/xiaomi/smack/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/r;->a:Lcom/xiaomi/smack/q;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/r;->a:Lcom/xiaomi/smack/q;

    invoke-static {v0}, Lcom/xiaomi/smack/q;->a(Lcom/xiaomi/smack/q;)V

    return-void
.end method

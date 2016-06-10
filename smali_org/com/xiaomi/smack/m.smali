.class public final Lcom/xiaomi/smack/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/smack/p;

.field private b:Lcom/xiaomi/smack/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/smack/p;Lcom/xiaomi/smack/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/smack/m;->a:Lcom/xiaomi/smack/p;

    iput-object p2, p0, Lcom/xiaomi/smack/m;->b:Lcom/xiaomi/smack/b/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/m;->a:Lcom/xiaomi/smack/p;

    invoke-interface {v0, p1}, Lcom/xiaomi/smack/p;->a(Lcom/xiaomi/smack/packet/e;)V

    return-void
.end method

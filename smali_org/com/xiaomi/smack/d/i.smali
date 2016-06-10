.class final Lcom/xiaomi/smack/d/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JIILjava/lang/String;J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/d/i;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xiaomi/smack/d/i;->b:J

    iput v1, p0, Lcom/xiaomi/smack/d/i;->c:I

    iput v1, p0, Lcom/xiaomi/smack/d/i;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/d/i;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xiaomi/smack/d/i;->f:J

    iput-object p1, p0, Lcom/xiaomi/smack/d/i;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/smack/d/i;->b:J

    iput p4, p0, Lcom/xiaomi/smack/d/i;->c:I

    iput p5, p0, Lcom/xiaomi/smack/d/i;->d:I

    iput-object p6, p0, Lcom/xiaomi/smack/d/i;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xiaomi/smack/d/i;->f:J

    return-void
.end method

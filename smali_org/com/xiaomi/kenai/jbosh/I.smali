.class public final Lcom/xiaomi/kenai/jbosh/I;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method private constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/I;->a:Ljava/net/URI;

    iput-object p2, p0, Lcom/xiaomi/kenai/jbosh/I;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/kenai/jbosh/I;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/kenai/jbosh/I;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/kenai/jbosh/I;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/kenai/jbosh/I;->f:Ljava/lang/String;

    iput p7, p0, Lcom/xiaomi/kenai/jbosh/I;->g:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;ZB)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/xiaomi/kenai/jbosh/I;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/I;->a:Ljava/net/URI;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/I;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/I;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/I;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/I;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/I;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/kenai/jbosh/I;->g:I

    return v0
.end method

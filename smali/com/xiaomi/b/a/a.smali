.class public final Lcom/xiaomi/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/a/a;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lcom/xiaomi/smack/l;

.field private d:Lcom/xiaomi/smack/p;

.field private e:Ljava/io/Writer;

.field private f:Ljava/io/Reader;

.field private g:Lcom/xiaomi/smack/d/f;

.field private h:Lcom/xiaomi/smack/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/b/a/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/l;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->b:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/xiaomi/b/a/a;->c:Lcom/xiaomi/smack/l;

    iput-object v2, p0, Lcom/xiaomi/b/a/a;->d:Lcom/xiaomi/smack/p;

    iput-object p1, p0, Lcom/xiaomi/b/a/a;->c:Lcom/xiaomi/smack/l;

    iput-object p2, p0, Lcom/xiaomi/b/a/a;->e:Ljava/io/Writer;

    iput-object p3, p0, Lcom/xiaomi/b/a/a;->f:Ljava/io/Reader;

    .line 1000
    new-instance v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->f:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/xiaomi/b/a/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/b/a/b;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v1, p0, Lcom/xiaomi/b/a/a;->g:Lcom/xiaomi/smack/d/f;

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->g:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    new-instance v1, Lcom/xiaomi/smack/d/b;

    iget-object v2, p0, Lcom/xiaomi/b/a/a;->e:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lcom/xiaomi/b/a/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/b/a/c;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v2, p0, Lcom/xiaomi/b/a/a;->h:Lcom/xiaomi/smack/d/f;

    iget-object v2, p0, Lcom/xiaomi/b/a/a;->h:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/f;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->f:Ljava/io/Reader;

    iput-object v1, p0, Lcom/xiaomi/b/a/a;->e:Ljava/io/Writer;

    new-instance v0, Lcom/xiaomi/b/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/b/a/d;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->d:Lcom/xiaomi/smack/p;

    new-instance v0, Lcom/xiaomi/b/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/b/a/e;-><init>(Lcom/xiaomi/b/a/a;)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/b/a/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/b/a/a;)Lcom/xiaomi/smack/l;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->c:Lcom/xiaomi/smack/l;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->f:Ljava/io/Reader;

    return-object v0
.end method

.method public final a(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->f:Ljava/io/Reader;

    check-cast v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->g:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->b(Lcom/xiaomi/smack/d/f;)V

    new-instance v0, Lcom/xiaomi/smack/d/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->g:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->f:Ljava/io/Reader;

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->f:Ljava/io/Reader;

    return-object v0
.end method

.method public final a(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->e:Ljava/io/Writer;

    check-cast v0, Lcom/xiaomi/smack/d/b;

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->h:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->b(Lcom/xiaomi/smack/d/f;)V

    new-instance v0, Lcom/xiaomi/smack/d/b;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->h:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/f;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->e:Ljava/io/Writer;

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->e:Ljava/io/Writer;

    return-object v0
.end method

.method public final b()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->e:Ljava/io/Writer;

    return-object v0
.end method

.method public final c()Lcom/xiaomi/smack/p;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a;->d:Lcom/xiaomi/smack/p;

    return-object v0
.end method

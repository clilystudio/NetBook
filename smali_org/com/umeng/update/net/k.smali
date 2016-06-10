.class final Lcom/umeng/update/net/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/update/net/k;->f:[Ljava/lang/String;

    .line 232
    iput-boolean v1, p0, Lcom/umeng/update/net/k;->g:Z

    .line 234
    iput-boolean v1, p0, Lcom/umeng/update/net/k;->h:Z

    .line 236
    iput-boolean v1, p0, Lcom/umeng/update/net/k;->i:Z

    .line 239
    iput-object p1, p0, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    .line 242
    return-void
.end method

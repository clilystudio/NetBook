.class final Lcom/ushaqi/zhuishushenqi/util/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/ae;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/util/af;->a:I

    .line 210
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/util/af;->b:Ljava/lang/String;

    .line 211
    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/util/af;->c:Ljava/lang/String;

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/af;)I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/af;->a:I

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/af;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/af;->c:Ljava/lang/String;

    return-object v0
.end method

.class final Lcom/ushaqi/zhuishushenqi/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/by;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/by;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bz;-><init>(Lcom/ushaqi/zhuishushenqi/ui/by;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/model/InsideLink;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bz;->a:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bz;->b:I

    .line 98
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bz;->a:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    .line 90
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bz;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bz;->c:I

    .line 106
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bz;->c:I

    return v0
.end method

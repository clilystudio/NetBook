.class final Lcom/cocosw/bottomsheet/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/h;-><init>()V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput p1, p0, Lcom/cocosw/bottomsheet/h;->b:I

    .line 394
    iput-object p2, p0, Lcom/cocosw/bottomsheet/h;->c:Ljava/lang/CharSequence;

    .line 395
    iput-object p3, p0, Lcom/cocosw/bottomsheet/h;->d:Landroid/graphics/drawable/Drawable;

    .line 396
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;B)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1, p2, p3}, Lcom/cocosw/bottomsheet/h;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/cocosw/bottomsheet/h;I)I
    .locals 0

    .prologue
    .line 382
    iput p1, p0, Lcom/cocosw/bottomsheet/h;->b:I

    return p1
.end method

.method static synthetic a(Lcom/cocosw/bottomsheet/h;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lcom/cocosw/bottomsheet/h;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cocosw/bottomsheet/h;->d:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/cocosw/bottomsheet/h;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cocosw/bottomsheet/h;->c:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic b(Lcom/cocosw/bottomsheet/h;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lcom/cocosw/bottomsheet/h;)I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/cocosw/bottomsheet/h;->b:I

    return v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MenuItem{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cocosw/bottomsheet/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", divider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cocosw/bottomsheet/h;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

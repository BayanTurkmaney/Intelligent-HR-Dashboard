/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/providers/product_provider.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit-product';
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _imageUrlController = TextEditingController();
  final _imageUrlFousNode = FocusNode();
  final _form = GlobalKey<FormState>();
  var _editedProduct =
  Product(id: null, title: "", price: 0, imageUrl: '', description: '');
  var _isInit = false;
  var _isLoading = false;
  var _initValues = {
    'title': '',
    'description': '',
    'price': '',
    'imageUrl': ''
  };
  @override
  void initState() {
    _imageUrlFousNode.addListener(_updateImageUrl);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _imageUrlFousNode.removeListener(_updateImageUrl);
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _imageUrlController.dispose();
    _imageUrlFousNode.dispose();
    super.dispose();
  }

  void _updateImageUrl() {
    if (!_imageUrlFousNode.hasFocus) {
      if (!_imageUrlController.text.startsWith('http') &&
          !_imageUrlController.text.startsWith('https') ||
          !_imageUrlController.text.endsWith('.png') &&
              !_imageUrlController.text.endsWith('.jpg') &&
              !_imageUrlController.text.endsWith('.jpeg')) {
        return;
      }

      setState(() {});
    }
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      final productId = ModalRoute.of(context).settings.arguments as String;
      if (productId != null) {
        _editedProduct = Provider.of<ProductProvider>(context, listen: false)
            .findById(productId);
        _initValues = {
          'title': _editedProduct.title,
          'description': _editedProduct.description,
          'price': _editedProduct.price.toString(),
          //'imgUrl':_editedProduct.imageUrl,
          'imageUrl': ''
        };
        _imageUrlController.text = _editedProduct.imageUrl;
      }
    }
    _isInit = false;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  Future<void> _saveForm() async {
    final _isValid = _form.currentState.validate();
    if (!_isValid) {
      return;
    }
    _form.currentState.save();
    setState(() {
      _isLoading = true;
    });

    if (_editedProduct.id != null) {
      await Provider.of<ProductProvider>(context, listen: false)
          .updateProduct(_editedProduct.id, _editedProduct);
    } else {
      try {
        await Provider.of<ProductProvider>(context, listen: false)
            .addProduct(_editedProduct);
      } catch (er) {
        await showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text('An error occured!'),
              content: Text('something went wrong'),
              actions: [
                FlatButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                ),
              ],
            ));
      }

// finally{
//   setState(() {
//     _isLoading=false;
//   });
//   Navigator.of(context).pop();
// }

    }
    setState(() {
      _isLoading = false;
    });
    Navigator.of(context).pop();

// print(_editedProduct.title);
// print(_editedProduct.price);
// print(_editedProduct.description);
// print(_editedProduct.imageUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
        actions: [IconButton(icon: Icon(Icons.save), onPressed: _saveForm)],
      ),
      body: _isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: ListView(
            //instead of using Column+ SingleShildScrollView
            children: [
              TextFormField(
                initialValue: _initValues['title'],
                decoration: InputDecoration(
                  labelText:
                  'Title', //errorText: 'invalid title',errorStyle: TextStyle(color: Colors.red)
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_priceFocusNode);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please provider a value';
                  }
                  return null;
                },
                onSaved: (val) {
                  _editedProduct = Product(
                      title: val,
                      price: _editedProduct.price,
                      description: _editedProduct.description,
                      imageUrl: _editedProduct.imageUrl,
                      id: _editedProduct.id,
                      isFavorite: _editedProduct.isFavorite);
                },
              ),
              TextFormField(
                  initialValue: _initValues['price'],
                  decoration: InputDecoration(
                    labelText: 'Price',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'please enter a price';
                    }
                    // if user enter string as a price such as hello
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    if (double.parse(value) <= 0) {
                      return 'Please enter a number greater than 0';
                    }

                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  focusNode: _priceFocusNode,
                  onSaved: (val) {
                    _editedProduct = Product(
                        title: _editedProduct.title,
                        price: double.parse(val),
                        description: _editedProduct.description,
                        imageUrl: _editedProduct.imageUrl,
                        id: _editedProduct.id,
                        isFavorite: _editedProduct.isFavorite);
                  }),
              TextFormField(
                  initialValue: _initValues['description'],
                  decoration: InputDecoration(
                    labelText: 'description',
                  ),
                  maxLines: 3,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'please enter a description';
                    }
                    if (value.length < 10) {
                      return 'should be at least 10 characters long.';
                    }
                    return null;
                  },

                  // textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.multiline,
                  focusNode: _descriptionFocusNode,
                  onSaved: (val) {
                    _editedProduct = Product(
                        title: _editedProduct.title,
                        price: _editedProduct.price,
                        description: val,
                        imageUrl: _editedProduct.imageUrl,
                        id: null);
                  }),
              Expanded(
                child: TextFormField(
                  //   initialValue: _initValues['imageUrl'],
                    decoration: InputDecoration(labelText: 'ImageUrl'),
                    keyboardType: TextInputType.url,
                    validator: (value) {
                      return null;
                    },
                    textInputAction: TextInputAction.done,
                    controller: _imageUrlController,
                    focusNode: _imageUrlFousNode,
                    onFieldSubmitted: (_) => {
                      _saveForm(),
                    },
                    onSaved: (val) {
                      _editedProduct = Product(
                          title: _editedProduct.title,
                          price: _editedProduct.price,
                          description: _editedProduct.description,
                          imageUrl: val,
                          id: _editedProduct.id,
                          isFavorite: _editedProduct.isFavorite);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

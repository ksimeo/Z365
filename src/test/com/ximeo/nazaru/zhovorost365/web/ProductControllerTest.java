//package com.ximeo.nazaru.zhovorost365.web;
//
//import com.ximeo.nazaru.zhivorost365.domain.models.Product;
//import com.ximeo.nazaru.zhivorost365.service.ProductService;
//import com.ximeo.nazaru.zhivorost365.web.ProductController;
//import org.junit.Test;
//import org.springframework.ui.Model;
//
//import java.util.Collection;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import static java.util.Arrays.asList;
//import static org.junit.Assert.assertEquals;
//import static org.mockito.Mockito.mock;
//import static org.mockito.Mockito.when;
//
//public class ProductControllerTest {
//
//    @Test
//    public void showAllProductsTest() {
//        List<Product> expectedProds = asList(new Product(), new Product(), new Product());
//        ProductService prodServ = mock(ProductService.class);
//        when(prodServ.getAll()).thenReturn(expectedProds);
//        ProductController prodController = (new ProductController(prodServ));
//        Model uiModel = new Model() {
//            @Override
//            public Model addAttribute(String s, Object o) {
//                return null;
//            }
//
//            @Override
//            public Model addAttribute(Object o) {
//                return null;
//            }
//
//            @Override
//            public Model addAllAttributes(Collection<?> collection) {
//                return null;
//            }
//
//            @Override
//            public Model addAllAttributes(Map<String, ?> map) {
//                return null;
//            }
//
//            @Override
//            public Model mergeAttributes(Map<String, ?> map) {
//                return null;
//            }
//
//            @Override
//            public boolean containsAttribute(String s) {
//                return false;
//            }
//
//            @Override
//            public Map<String, Object> asMap() {
//                return null;
//            }
//        };
//        HashMap<String, Object> model = new HashMap<>();
//        String viewName = prodController.showAllProducts(uiModel);
//
//        assertEquals("private/products", viewName);
//    }
//}
